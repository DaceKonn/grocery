import 'package:get_it/get_it.dart';
import 'package:grocery/interface/product/creation/product_creation_controller.dart';
import 'package:grocery/interface/product/creation/impl/product_creation_presenter.dart';
import 'package:grocery/interface/product/get/get_product_controller.dart';
import 'package:grocery/interface/product/get/impl/get_product_presenter.dart';
import 'package:grocery/use_cases/get_products/get_products_ds_gateway.dart';
import 'package:grocery/use_cases/product_creation/impl/product_creation_interactor.dart';
import 'package:grocery/use_cases/product_creation/product_creation_ports.dart';
import '../entities/product/SimpleProduct/simple_product_factory.dart';
import '../entities/product/product_factory.dart';
import '../interface/product/creation/impl/product_creation_controller_impl.dart';
import '../interface/product/get/impl/get_product_controller_impl.dart';
import '../interface/product/in_memory/in_memory_product_gateway.dart';
import '../interface/product/in_memory/in_memory_product_repository.dart';
import '../use_cases/get_products/get_product_ports.dart';
import '../use_cases/get_products/impl/get_products_interactor.dart';
import '../use_cases/product_creation/product_creation_ds_gateway.dart';
import 'auth/auth.dart';
import 'firebase/firebase_authentication.dart';
import 'firebase/firebase_initializer_impl.dart';
import 'infrastructure.dart';

GetIt locator = GetIt.instance;
InMemoryProductGateway _repo = InMemoryProductGateway(InMemoryProductRepository());

void setupLocator() {
  locator.registerSingleton<InfrastructureInitializer>(FirebaseInitializerImpl());
  locator.registerSingleton<SecurityInitializer>(FirebaseSecurityInitializer());

  _registerProductCreationController();
  _registerProductGetController();
}

void _registerProductGetController() {
  GetProductsDsGateway gateway = locator.registerSingleton<GetProductsDsGateway>(_repo);
  var input = locator.registerSingleton<GetProductsInput>(GetProductsInteractor(gateway));
  locator.registerSingleton<GetProductController>(GetProductControllerImpl(input, GetProductPresenter()));
}

void _registerProductCreationController() {
  ProductCreationDsGateway gateway = locator.registerSingleton<ProductCreationDsGateway>(_repo);
  ProductFactory factory = locator.registerSingleton<ProductFactory>(SimpleProductFactory());
  var input = locator.registerSingleton<ProductCreationInput>(ProductCreationInteractor(gateway, factory));
  locator.registerSingleton<ProductCreationController>(ProductCreationControllerImpl(input, ProductCreationPresenter()));
}