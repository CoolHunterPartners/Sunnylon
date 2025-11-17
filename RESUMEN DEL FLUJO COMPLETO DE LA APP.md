# RESUMEN DEL FLUJO COMPLETO DE LA APP

## 🟣 Navegación principal

La app de cobradores de Sunnylon es móvil (Android / iOS, orientación vertical) y está pensada para uso en calle, con tiempos reducidos y posibles problemas de conexión. Utiliza una barra de navegación inferior con 4 tabs: **Cobros**, **Clientes**, **Préstamos** y **Más**. El estilo visual respeta la paleta y tipografía oficial de Sunnylon, priorizando un diseño simple, moderno y legible.

---

## 1. Tab Cobros — Ruta de cobros de hoy

**Objetivo**: permitir que el cobrador gestione su ruta diaria, registre pagos y marque clientes que no pagaron o no se localizaron.

### Pantallas clave
- **Lista de cobros**: muestra a los clientes en el orden enviado por el backend (ese orden es la ruta). Cada ítem despliega nombre, monto a cobrar hoy y un chip de estado (Pendiente, Pagado, Atrasado, No localizado). Empty: “No tienes cobros hoy”. Error: mensaje + botón “Reintentar”.
- **Detalle de cobro**: encabezado con nombre y chip de estado, más monto a cobrar, saldo total y días de atraso. Acciones principales: Registrar pago, No pagó / No localizado. Acciones secundarias: Ver historial de pagos, Ver dirección / abrir mapa, Llamar / WhatsApp. Error: mensaje + “Reintentar” o “Volver a cobros”.

### Flujos
- **Registrar pago**: campos de Monto pagado (prellenado con cuota), método y notas. Botones Confirmar pago / Cancelar. En error se conserva la data y se informa; si no hay conexión, el pago queda “pendiente de sincronizar”.
- **No pagó / No localizado**: opciones (No pagó, No estaba en casa, Dirección incorrecta, Otro + notas) con botones Guardar estado / Cancelar. Manejo de errores con mensaje y opción de reintentar.
- **Confirmación**: ícono de éxito, mensaje “Pago registrado”, resumen (cliente, monto, fecha/hora) y botones Volver a cobros / Seguir cobrando / Ver detalle. Puede marcarse si quedó guardado offline.

---

## 2. Tab Clientes

**Objetivo**: consultar clientes, sus datos y su historial.

### Pantallas clave
- **Lista de clientes**: búsqueda superior, ítems con nombre, identificador y estado general (“Al día”, “Con atraso”). Empty: “Todavía no tienes clientes asignados”. Error: mensaje + “Reintentar”.
- **Detalle de cliente**: encabezado con nombre, identificador y estado. Datos de contacto (teléfono, dirección y accesos a Llamar / WhatsApp). Resumen financiero (saldo pendiente, próxima cuota o cuota actual, días de atraso). Acciones: “Ver cobros de hoy para este cliente” (abre detalle en Cobros) y “Ver historial de pagos”.
- **Historial de pagos**: lista con fecha, monto y tipo/estado. Empty: “Este cliente todavía no tiene pagos registrados”. Error: “No pudimos cargar el historial de pagos” + “Reintentar”.

---

## 3. Tab Préstamos

**Objetivo**: crear solicitudes de préstamo para clientes existentes o nuevos mediante un listado y un flujo (wizard) cuando se requiere más información.

### Pantallas y flujos
- **Listado de solicitudes**: título “Solicitudes de préstamo”, botón destacado “Nueva solicitud de préstamo”, lista con nombre del cliente, monto y estado (En revisión, Aprobada, Rechazada, Pendiente de envío). Empty: “Aún no tienes solicitudes de préstamo”. Error: mensaje + “Reintentar”.
- **Paso 0 – Elegir tipo**: opciones de tarjeta para Cliente existente vs. Cliente nuevo.

#### Flujo A — Cliente existente
- **Seleccionar cliente**: búsqueda + lista similar a Clientes. Empty: “No encontramos clientes para tu búsqueda”. Error: “No pudimos cargar tus clientes” + “Reintentar”.
- **Detalles del préstamo**: encabezado con cliente y campos (Monto solicitado, Plazo, Frecuencia de pago, Notas). Botones Enviar solicitud / Cancelar. En error o sin conexión, se indica y la solicitud queda “Pendiente de envío”.

#### Flujo B — Cliente nuevo (wizard)
- **Paso 1 – Datos del cliente**: Nombre, documento, fecha de nacimiento (opcional), tipo o parentesco si aplica.
- **Paso 2 – Dirección y contacto**: Teléfono, dirección, ciudad/zona.
- **Paso 3 – Detalles del préstamo**: Monto solicitado, Plazo, Frecuencia, Notas y resumen. Botones Siguiente/Atrás/Cancelar según corresponda. Validaciones con mensajes claros (“Escribe el nombre del cliente”).
- **Errores / offline**: mensaje “Guardaremos la solicitud y la enviaremos cuando tengas conexión”; aparece como “Pendiente de envío” en el listado.
- **Confirmación**: ícono de éxito, mensaje “Solicitud creada”, resumen (cliente, monto, plazo, estado Enviada o Pendiente de envío) y acciones Volver a préstamos / Ver detalle.

---

## 4. Tab Más

**Objetivo**: concentrar opciones de cuenta, sincronización, ayuda y datos de la app.

### Pantallas clave
- **Menú Más**: ítems Perfil, Estado de sincronización, Ayuda y soporte, Acerca de Sunnylon, Cerrar sesión.
- **Perfil**: avatar/iniciales, nombre, rol (Cobrador), email, código y zona. Puede ser solo lectura o con edición limitada.
- **Estado de sincronización**: muestra estado general (Todo al día / Pendientes / Error / Sin conexión), resumen de pagos pendientes, solicitudes pendientes y última sincronización. Incluye botón “Sincronizar ahora” con mensajes claros y sin tecnicismos.
- **Ayuda y soporte**: FAQs breves y datos de contacto (teléfono/WhatsApp, correo).
- **Acerca de Sunnylon**: logo, descripción breve, versión y empresa responsable.

---

Este resumen sirve como contexto centralizado para diseño, producto e ingeniería al planear pantallas, flujos offline-first y estados de error dentro de la app de cobradores de Sunnylon.
