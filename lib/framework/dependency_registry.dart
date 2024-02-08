import 'package:get_it/get_it.dart';
import 'package:grocery/entities/abstracts/product/product.dart';
import 'package:grocery/entities/abstracts/product/shelve.dart';
import 'package:grocery/entities/abstracts/product/shelve_placement.dart';

import 'package:grocery/interface/product/creation/product_creation_controller.dart';
import 'package:grocery/interface/product/creation/impl/product_creation_presenter.dart';
import 'package:grocery/interface/product/get/get_product_controller.dart';
import 'package:grocery/interface/product/get/impl/get_product_presenter.dart';
import 'package:grocery/use_cases/get_products/get_products_ds_gateway.dart';
import 'package:grocery/use_cases/product_creation/impl/product_creation_interactor.dart';
import 'package:grocery/use_cases/product_creation/product_creation_ports.dart';
import 'package:grocery/entities/impl/product/simple_product_factory.dart';
import 'package:grocery/entities/impl/product/simple_shelve_factory.dart';
import 'package:grocery/entities/impl/product/simple_shelve_placement_factory.dart';
import 'package:grocery/interface/product/creation/impl/product_creation_controller_impl.dart';
import 'package:grocery/interface/product/get/impl/get_product_controller_impl.dart';
import 'package:grocery/interface/product/in_memory/in_memory_product_gateway.dart';
import 'package:grocery/interface/product/in_memory/in_memory_product_repository.dart';
import 'package:grocery/use_cases/get_products/get_product_ports.dart';
import 'package:grocery/use_cases/get_products/impl/get_products_interactor.dart';
import 'package:grocery/use_cases/product_creation/product_creation_ds_gateway.dart';
import 'package:grocery/framework/auth/auth.dart';
import 'package:grocery/framework/firebase/firebase_authentication.dart';
import 'package:grocery/framework/firebase/firebase_initializer_impl.dart';
import 'package:grocery/framework/infrastructure.dart';

GetIt locator = GetIt.instance;
InMemoryProductGateway _repo = InMemoryProductGateway(InMemoryProductRepository());

void setupLocator() {
  locator.registerSingleton<InfrastructureInitializer>(FirebaseInitializerImpl());
  locator.registerSingleton<SecurityInitializer>(FirebaseSecurityInitializer());

  _registerEntityLevel();
  _registerProductCreationController();
  _registerProductGetController();
}

void _registerEntityLevel() {
  var shelveFactory = locator.registerSingleton<ShelveFactory>(SimpleShelveFactory());
  var shelvePlacementFactory = locator.registerSingleton<ShelvePlacementFactory>(SimpleShelvePlacementFactory());
  locator.registerSingleton<ProductFactory>(SimpleProductFactory(shelveFactory, shelvePlacementFactory));
}

void _registerProductGetController() {
  var gateway = locator.registerSingleton<GetProductsDsGateway>(_repo);
  var input = locator.registerSingleton<GetProductsInput>(GetProductsInteractor(gateway));
  locator.registerSingleton<GetProductController>(GetProductControllerImpl(input, GetProductPresenter()));
}

void _registerProductCreationController() {
  ProductCreationDsGateway gateway = locator.registerSingleton<ProductCreationDsGateway>(_repo);
  var input = locator.registerSingleton<ProductCreationInput>(ProductCreationInteractor(gateway, locator<ProductFactory>()));
  locator.registerSingleton<ProductCreationController>(ProductCreationControllerImpl(input, ProductCreationPresenter()));
}