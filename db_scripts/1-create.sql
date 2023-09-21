CREATE DATABASE cine;
use cine;
CREATE TABLE [dbo].[butacas](
	[id_butaca] [int] NOT NULL,
	[codi_funcion] [int] NULL,
	[id_estado] [int] NULL,
	[descripcion] [varchar](255) NULL,
	[id_sala] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_butaca] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

CREATE TABLE [dbo].[butacas_reservadas](
	[id_butaca_reservada] [int] NOT NULL,
	[id_reserva] [int] NULL,
	[id_butaca] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_butaca_reservada] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

CREATE TABLE [dbo].[caterias](
	[codi_cateria] [int] NOT NULL,
	[descripcion] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[codi_cateria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

CREATE TABLE [dbo].[cines](
	[codi_cine] [int] NOT NULL,
	[nombre_cine] [varchar](255) NULL,
	[localidad] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[codi_cine] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

CREATE TABLE [dbo].[clasificaciones](
	[codi_clasificacion] [int] NOT NULL,
	[descripcion] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[codi_clasificacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

CREATE TABLE [dbo].[clientes](
	[id_cliente] [int] NOT NULL,
	[nom_cliente] [varchar](255) NULL,
	[apellido_cliente] [varchar](255) NULL,
	[telefono] [varchar](20) NULL,
	[email] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_cliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

REATE TABLE [dbo].[descuento](
	[id_descuento] [int] NOT NULL,
	[id_tipo] [int] NULL,
	[valor] [decimal](10, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_descuento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

CREATE TABLE [dbo].[detalles_facturas](
	[id_detalle_factura] [int] NOT NULL,
	[id_factura] [int] NULL,
	[id_butaca] [int] NULL,
	[precio] [decimal](10, 2) NULL,
	[id_descuento] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_detalle_factura] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]


CREATE TABLE [dbo].[detalles_pas](
	[id_detalle_pa] [int] NOT NULL,
	[id_factura] [int] NULL,
	[id_forma] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_detalle_pa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

CREATE TABLE [dbo].[estados](
	[id_estado] [int] NOT NULL,
	[descripcion] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_estado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

CREATE TABLE [dbo].[facturas](
	[id_factura] [int] NOT NULL,
	[fecha] [date] NULL,
	[id_cliente] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_factura] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]


CREATE TABLE [dbo].[fechas](
	[codi_fecha] [int] NOT NULL,
	[descripcion] [varchar](255) NULL,
	[codi_funcion] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[codi_fecha] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]


CREATE TABLE [dbo].[formas_pa](
	[id_forma] [int] NOT NULL,
	[descripcion] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_forma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]


CREATE TABLE [dbo].[formatos](
	[id_formato] [int] NOT NULL,
	[descripcion] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_formato] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]


CREATE TABLE [dbo].[funciones](
	[codi_funcion] [int] NOT NULL,
	[descripcion] [varchar](255) NULL,
	[codi_pelicula] [int] NULL,
	[fecha] [date] NULL,
	[hora] [time](7) NULL,
	[precio] [decimal](10, 2) NULL,
	[id_sala] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[codi_funcion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]


CREATE TABLE [dbo].[peliculas](
	[codi_pelicula] [int] NOT NULL,
	[nombre_pelicula] [varchar](255) NULL,
	[codi_cine] [int] NULL,
	[codi_fecha] [int] NULL,
	[fecha_inicio] [date] NULL,
	[fecha_final] [date] NULL,
	[director] [varchar](255) NULL,
	[codi_cateria] [int] NULL,
	[codi_clasificacion] [int] NULL,
	[codi_formato] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[codi_pelicula] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]


CREATE TABLE [dbo].[reservas](
	[id_reserva] [int] NOT NULL,
	[numero_reserva] [int] NULL,
	[id_butaca] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_reserva] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]


CREATE TABLE [dbo].[salas](
	[id_sala] [int] NOT NULL,
	[cantidad_butaca] [int] NULL,
	[codi_cine] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_sala] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]


CREATE TABLE [dbo].[ticket](
	[id_ticket] [int] NOT NULL,
	[id_sala] [int] NULL,
	[codi_pelicula] [int] NULL,
	[codi_funcion] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_ticket] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]


CREATE TABLE [dbo].[tipo_descuento](
	[id_tipo] [int] NOT NULL,
	[descripcion] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_tipo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]



ALTER TABLE [dbo].[butacas]  WITH CHECK ADD  CONSTRAINT [FK_Butacas_Estados] FOREIGN KEY([id_estado])
REFERENCES [dbo].[estados] ([id_estado])


ALTER TABLE [dbo].[butacas] CHECK CONSTRAINT [FK_Butacas_Estados]


ALTER TABLE [dbo].[butacas]  WITH CHECK ADD  CONSTRAINT [FK_Butacas_Funciones] FOREIGN KEY([codi_funcion])
REFERENCES [dbo].[funciones] ([codi_funcion])


ALTER TABLE [dbo].[butacas] CHECK CONSTRAINT [FK_Butacas_Funciones]


ALTER TABLE [dbo].[butacas]  WITH CHECK ADD  CONSTRAINT [FK_Butacas_Salas] FOREIGN KEY([id_sala])
REFERENCES [dbo].[salas] ([id_sala])


ALTER TABLE [dbo].[butacas] CHECK CONSTRAINT [FK_Butacas_Salas]



ALTER TABLE [dbo].[butacas_reservadas]  WITH CHECK ADD  CONSTRAINT [FK_ButacasReservadas_Butacas] FOREIGN KEY([id_butaca])
REFERENCES [dbo].[butacas] ([id_butaca])


ALTER TABLE [dbo].[butacas_reservadas] CHECK CONSTRAINT [FK_ButacasReservadas_Butacas]


ALTER TABLE [dbo].[butacas_reservadas]  WITH CHECK ADD  CONSTRAINT [FK_ButacasReservadas_Reservas] FOREIGN KEY([id_reserva])
REFERENCES [dbo].[reservas] ([id_reserva])


ALTER TABLE [dbo].[butacas_reservadas] CHECK CONSTRAINT [FK_ButacasReservadas_Reservas]


ALTER TABLE [dbo].[descuento]  WITH CHECK ADD FOREIGN KEY([id_tipo])
REFERENCES [dbo].[tipo_descuento] ([id_tipo])


ALTER TABLE [dbo].[detalles_facturas]  WITH CHECK ADD  CONSTRAINT [FK_DetallesFacturas_Butacas] FOREIGN KEY([id_butaca])
REFERENCES [dbo].[butacas] ([id_butaca])


ALTER TABLE [dbo].[detalles_facturas] CHECK CONSTRAINT [FK_DetallesFacturas_Butacas]


ALTER TABLE [dbo].[detalles_facturas]  WITH CHECK ADD  CONSTRAINT [FK_DetallesFacturas_Descuento] FOREIGN KEY([id_descuento])
REFERENCES [dbo].[descuento] ([id_descuento])


ALTER TABLE [dbo].[detalles_facturas] CHECK CONSTRAINT [FK_DetallesFacturas_Descuento]


ALTER TABLE [dbo].[detalles_facturas]  WITH CHECK ADD  CONSTRAINT [FK_DetallesFacturas_Facturas] FOREIGN KEY([id_factura])
REFERENCES [dbo].[facturas] ([id_factura])


ALTER TABLE [dbo].[detalles_facturas] CHECK CONSTRAINT [FK_DetallesFacturas_Facturas]


ALTER TABLE [dbo].[detalles_pas]  WITH CHECK ADD FOREIGN KEY([id_factura])
REFERENCES [dbo].[facturas] ([id_factura])


ALTER TABLE [dbo].[detalles_pas]  WITH CHECK ADD FOREIGN KEY([id_forma])
REFERENCES [dbo].[formas_pa] ([id_forma])




ALTER TABLE [dbo].[facturas]  WITH CHECK ADD FOREIGN KEY([id_cliente])
REFERENCES [dbo].[clientes] ([id_cliente])



ALTER TABLE [dbo].[fechas]  WITH CHECK ADD  CONSTRAINT [FK_Fechas_Funciones] FOREIGN KEY([codi_funcion])
REFERENCES [dbo].[funciones] ([codi_funcion])


ALTER TABLE [dbo].[fechas] CHECK CONSTRAINT [FK_Fechas_Funciones]



ALTER TABLE [dbo].[funciones]  WITH CHECK ADD  CONSTRAINT [FK_Funciones_Peliculas] FOREIGN KEY([codi_pelicula])
REFERENCES [dbo].[peliculas] ([codi_pelicula])


ALTER TABLE [dbo].[funciones] CHECK CONSTRAINT [FK_Funciones_Peliculas]


ALTER TABLE [dbo].[funciones]  WITH CHECK ADD  CONSTRAINT [FK_Funciones_Salas] FOREIGN KEY([id_sala])
REFERENCES [dbo].[salas] ([id_sala])


ALTER TABLE [dbo].[funciones] CHECK CONSTRAINT [FK_Funciones_Salas]




ALTER TABLE [dbo].[peliculas]  WITH CHECK ADD FOREIGN KEY([codi_cine])
REFERENCES [dbo].[cines] ([codi_cine])


ALTER TABLE [dbo].[peliculas]  WITH CHECK ADD FOREIGN KEY([codi_cateria])
REFERENCES [dbo].[caterias] ([codi_cateria])


ALTER TABLE [dbo].[peliculas]  WITH CHECK ADD FOREIGN KEY([codi_clasificacion])
REFERENCES [dbo].[clasificaciones] ([codi_clasificacion])


ALTER TABLE [dbo].[peliculas]  WITH CHECK ADD FOREIGN KEY([codi_formato])
REFERENCES [dbo].[formatos] ([id_formato])




ALTER TABLE [dbo].[salas]  WITH CHECK ADD FOREIGN KEY([codi_cine])
REFERENCES [dbo].[cines] ([codi_cine])



ALTER TABLE [dbo].[ticket]  WITH CHECK ADD  CONSTRAINT [FK_Ticket_Funciones] FOREIGN KEY([codi_funcion])
REFERENCES [dbo].[funciones] ([codi_funcion])


ALTER TABLE [dbo].[ticket] CHECK CONSTRAINT [FK_Ticket_Funciones]


ALTER TABLE [dbo].[ticket]  WITH CHECK ADD  CONSTRAINT [FK_Ticket_Peliculas] FOREIGN KEY([codi_pelicula])
REFERENCES [dbo].[peliculas] ([codi_pelicula])


ALTER TABLE [dbo].[ticket] CHECK CONSTRAINT [FK_Ticket_Peliculas]


ALTER TABLE [dbo].[ticket]  WITH CHECK ADD  CONSTRAINT [FK_Ticket_Salas] FOREIGN KEY([id_sala])
REFERENCES [dbo].[salas] ([id_sala])


ALTER TABLE [dbo].[ticket] CHECK CONSTRAINT [FK_Ticket_Salas]



