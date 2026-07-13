# Product CRUD App (Hive Local Database)

Una aplicación Flutter completa que implementa un CRUD (Crear, Leer, Actualizar, Eliminar) para la gestión de productos, utilizando **Hive** como base de datos local y persistente. Diseñada para funcionar sin configuraciones nativas complejas en Web, Android, iOS y Desktop.

## Características

*   **Crear:** Agrega nuevos productos con validación de campos (Nombre, Descripción, Precio, Stock).
*   **Leer:** Visualiza la lista de productos agregados en tiempo real de forma ordenada.
*   **Actualizar:** Permite modificar los datos de cualquier producto seleccionado.
*   **Eliminar:** Borra productos de la base de datos con una confirmación visual previa.
*   **Persistencia Local:** Los datos se guardan localmente en el dispositivo (utilizando IndexedDB en Web) y persisten al reiniciar la app o recargar la página.

## Tecnologías Utilizadas

*   [Flutter SDK](https://flutter.dev) (v3.x+)
*   [Hive Flutter](https://pub.dev/packages/hive_flutter) (Base de datos NoSQL ligera, rápida y multiplataforma)

## Estructura del Proyecto

El código fuente principal se organiza de la siguiente manera:

*   [`lib/models/product.dart`](file:///d:/Tareas/Apps%20Moviles/Prueba%20Bimestral/product_crud_app/lib/models/product.dart): Define la entidad `Product` y la serialización de datos.
*   [`lib/database/database_helper.dart`](file:///d:/Tareas/Apps%20Moviles/Prueba%20Bimestral/product_crud_app/lib/database/database_helper.dart): Clase singleton encargada de gestionar la conexión y las operaciones CRUD sobre la base de datos local de Hive.
*   [`lib/screens/product_list_screen.dart`](file:///d:/Tareas/Apps%20Moviles/Prueba%20Bimestral/product_crud_app/lib/screens/product_list_screen.dart): Pantalla principal que renderiza el catálogo de productos y gestiona las acciones de eliminación.
*   [`lib/screens/product_form_screen.dart`](file:///d:/Tareas/Apps%20Moviles/Prueba%20Bimestral/product_crud_app/lib/screens/product_form_screen.dart): Formulario interactivo con validación para crear y editar productos.
*   [`lib/main.dart`](file:///d:/Tareas/Apps%20Moviles/Prueba%20Bimestral/product_crud_app/lib/main.dart): Punto de entrada que inicializa Hive y arranca la aplicación.

## Requisitos Previos

Asegúrate de tener instalado Flutter en tu sistema. Puedes comprobarlo ejecutando:

```bash
flutter doctor
```

## Instrucciones para Ejecutar el Proyecto

1.  Navega al directorio del proyecto:
    ```bash
    cd "d:\Tareas\Apps Moviles\Prueba Bimestral\product_crud_app"
    ```

2.  Limpia la compilación previa (opcional pero recomendado):
    ```bash
    flutter clean
    ```

3.  Instala las dependencias necesarias:
    ```bash
    flutter pub get
    ```

4.  Ejecuta la aplicación en tu plataforma seleccionada (por ejemplo, en el navegador Edge):
    ```bash
    flutter run -d edge
    ```

    O si prefieres listar los dispositivos disponibles:
    ```bash
    flutter devices
    ```

    ## Imagenes
    <img width="800" height="525" alt="image" src="https://github.com/user-attachments/assets/2671661f-b7a6-470c-b0de-dada78870195" />
    ## Create
    <img width="800" height="525" alt="image" src="https://github.com/user-attachments/assets/c356d1db-0f0c-4726-9d4c-d1d4171fd015" />
    ## Read
   <img width="800" height="525" alt="image" src="https://github.com/user-attachments/assets/2735441b-6310-4e17-84f2-4ae32661b154" />
   ## PUT
   <img width="800" height="525" alt="image" src="https://github.com/user-attachments/assets/7b30f968-2013-436b-9999-ead8970c5502" />
   ## Delete
   <img width="800" height="525" alt="image" src="https://github.com/user-attachments/assets/d4aa512d-70f5-42fb-86bc-833c4776ddb0" />

   <img width="800" height="525" alt="image" src="https://github.com/user-attachments/assets/d0696165-8091-4e55-ad45-f09355286a6b" />




