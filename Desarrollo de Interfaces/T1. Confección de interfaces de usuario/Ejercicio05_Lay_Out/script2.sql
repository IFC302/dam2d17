use desarrollo
CREATE TABLE [dbo].[Formularios2](
	idTexto int NOT NULL IDENTITY(1,1) PRIMARY KEY,
	campo [varchar](50) NOT NULL,
	valor [varchar](100) NOT NULL,
	idioma [varchar](50) NOT NULL
) ON [PRIMARY]
GO

INSERT INTO [dbo].[Formularios2] ([campo],[valor],[idioma])
      VALUES('lblTitulo','Formulario de insercci�n de datos de usuario','es'),
	 ('gbxInformacionPersonal','Informaci�n personal','es'),
	 ('lblNombre','Nombre','es'),
	 ('lblApellidos','Apellidos','es'),
	 ('lblCorreo','Correo','es'),
	 ('gbxTarjeta','Tarjeta','es'),
	 ('lblTipoDeTarjeta','Tipo de tarjeta','es'),
	 ('lblPropietario','Propietario','es'),
	  ('lblNumeroDeTarjeta','N�mero de tarjeta','es'),
	  ('lblCvv2','CVV2','es'),
	  ('lblFechaDeCaducidad','Fecha de caducidad','es'),
	  ('gbxDireccionDeFacturacion','Direcci�n de facturaci�n','es'),
	  ('lblDireccion','Direcci�n','es'),
	  ('lblCiudad','Ciudad','es'),
	  ('lblComunidad','Comunidad','es'),
	  ('lblC.P.','C.P.','es'),
	  ('lblPais','Pa�s','es'),
	  ('lblTelefono','Tel�fono','es'),
	  ('chbxCertifico','Certifico que soy mayor de edad y acepto los t�rminos.','es');
GO

INSERT INTO [dbo].[Formularios2] ([campo],[valor],[idioma])
	 VALUES('lblTitulo','Please complete the form below','en'),
	  ('gbxInformacionPersonal','Personal information','en'),
	  ('lblNombre','First name','en'),
	  ('lblApellidos','Last name','en'),
	  ('lblCorreo','Email','en'),
	  ('gbxTarjeta','Credit card information','en'),
	  ('lblTipoDeTarjeta','Credit card type','en'),
	  ('lblPropietario','Card holder','en'),
	  ('lblNumeroDeTarjeta','Card number','en'),
	  ('lblCvv2','CVV2','en'),
	  ('lblFechaDeCaducidad','Exp. date','en'),
	  ('gbxDireccionDeFacturacion','Billing address','en'),
	  ('lblDireccion','Street address','en'),
	  ('lblCiudad','City','en'),
	  ('lblComunidad','State','en'),
	  ('lblC.P.','ZIP','en'),
	  ('lblPais','County','en'),
	  ('lblTelefono','Phone','en'),
	  ('chbxCertifico','Check here to certify that you are 18 years of age or older and agree to the terms this purchase.','en');
