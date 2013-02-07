

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmTareas.aspx.cs" Inherits="AdministradorTareas.app.frmTareas" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript">
        function calendarioFechaInicio() {
            var dvFechaInicio = document.getElementById('dvFechaInicio');

            if (dvFechaInicio.style.display == 'none')
                dvFechaInicio.style.display = 'block';
            más
            dvFechaInicio.style.display = 'none';
        }

        function calendarioFechaVencimiento() {
            var dvFechaVencimiento = document.getElementById('dvFechaVencimiento');

            if (dvFechaVencimiento.style.display == 'none')
                dvFechaVencimiento.style.display = 'block';
            más
            dvFechaVencimiento.style.display = 'none';
        }

        function calendarioFechaTerminacion() {
            var dvFechaTerminacion = document.getElementById('dvFechaTerminacion');

            if (dvFechaTerminacion.style.display == 'none')
                dvFechaTerminacion.style.display = 'block';
            más
            dvFechaTerminacion.style.display = 'none';
        }
        function cargarTarea() {
            var dvCargarTareas = document.getElementById('dvCargarTareas');

            if (dvCargarTareas.style.display == 'none'){
                dvCargarTareas.style.display = 'block';
            }
            else{
            dvCargarTareas.style.display = 'none';
        }
        }
    </script>
    <script runat="server">
        protected void clFechaInicio_CambioFecha(object sender, EventArgs e)
        {
            txtFechaInicio.Text = clFechaInicio.SelectedDate.ToString("d");
        }

        protected void clFechaVencimiento_CambioFecha(object sender, EventArgs e)
        {
            txtFechaVencimiento.Text = clFechaVencimiento.SelectedDate.ToString("d");
        }

        protected void clFechaTerminacion_CambioFecha(object sender, EventArgs e)
        {
            txtFechaTerminacion.Text = clFechaTerminacion.SelectedDate.ToString("d");
        }
    </script>
    <style type="text/css">
        #dvFormularioTareas
        {
            height: 434px;
        }
    </style>
</head>
<body>
    <form id="frmTareas" runat="server">
    <div id="dvFormularioTareas">
        <asp:Label runat="server" ID="lblNombreTarea">Nombre de la Tarea:</asp:Label>
        <asp:TextBox runat="server" ID="txtNombreTarea"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvNombreTarea" runat="server" ControlToValidate="txtNombreTarea"
            ErrorMessage="* Campo Obligatorio" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        <asp:Label runat="server" ID="lblFechaInicioTarea">Fecha de Inicio de la Tarea:</asp:Label>
        <asp:TextBox runat="server" ID="txtFechaInicio" ReadOnly="true"></asp:TextBox>
        <img alt="" src="image/calendario.jpeg" onclick="calendarioFechaInicio()" />
        <asp:RequiredFieldValidator ID="rfvFechaInicio" runat="server" ControlToValidate="txtFechaInicio"
            ErrorMessage="* Campo Obligatorio" ForeColor="Red"></asp:RequiredFieldValidator>
        <div id="dvFechaInicio" style="display: none;">
            <asp:Calendar ID="clFechaInicio" OnSelectionChanged="clFechaInicio_CambioFecha" runat="server"
                BackColor="White" BorderColor="#999999" CaptionAlign="Left" CellPadding="4" DayNameFormat="Shortest"
                Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="180px" Width="200px">
                <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                <NextPrevStyle VerticalAlign="Bottom" />
                <OtherMonthDayStyle ForeColor="#808080" />
                <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                <SelectorStyle BackColor="#CCCCCC" />
                <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                <WeekendDayStyle BackColor="#FFFFCC" />
            </asp:Calendar>
        </div>
        <br />
        <asp:Label runat="server" ID="lblFechaVencimientoTarea">Fecha de Vencimiento de la Tarea:</asp:Label>
        <asp:TextBox runat="server" ID="txtFechaVencimiento" ReadOnly="true"></asp:TextBox>
        <img alt="" src="image/calendario.jpeg" onclick="calendarioFechaVencimiento()" />
        <asp:RequiredFieldValidator ID="rfvFechaVencimientoTarea" runat="server" ControlToValidate="txtFechaVencimiento"
            ErrorMessage="* Campo Obligatorio" ForeColor="Red"></asp:RequiredFieldValidator>
        <div id="dvFechaVencimiento" style="display: none;">
            <asp:Calendar ID="clFechaVencimiento" OnSelectionChanged="clFechaVencimiento_CambioFecha"
                runat="server" BackColor="White" BorderColor="#999999" CaptionAlign="Left" CellPadding="4"
                DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black"
                Height="180px" Width="200px">
                <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                <NextPrevStyle VerticalAlign="Bottom" />
                <OtherMonthDayStyle ForeColor="#808080" />
                <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                <SelectorStyle BackColor="#CCCCCC" />
                <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                <WeekendDayStyle BackColor="#FFFFCC" />
            </asp:Calendar>
        </div>
        <br />
        <asp:Label runat="server" ID="lblFechaTerminacionTarea">Fecha de Terminaciòn de la Tarea:</asp:Label>
        <asp:TextBox runat="server" ID="txtFechaTerminacion" ReadOnly="true"></asp:TextBox>
        <img alt="" src="image/calendario.jpeg" onclick="calendarioFechaTerminacion()" />
        <asp:RequiredFieldValidator ID="rfvFechaTerminacionTarea" runat="server" ControlToValidate="txtFechaTerminacion"
            ErrorMessage="* Campo Obligatorio" ForeColor="Red"></asp:RequiredFieldValidator>
        <div id="dvFechaTerminacion" style="display: none;">
            <asp:Calendar ID="clFechaTerminacion" OnSelectionChanged="clFechaTerminacion_CambioFecha"
                runat="server" BackColor="White" BorderColor="#999999" CaptionAlign="Left" CellPadding="4"
                DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black"
                Height="180px" Width="200px">
                <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                <NextPrevStyle VerticalAlign="Bottom" />
                <OtherMonthDayStyle ForeColor="#808080" />
                <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                <SelectorStyle BackColor="#CCCCCC" />
                <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                <WeekendDayStyle BackColor="#FFFFCC" />
            </asp:Calendar>
        </div>
        <br />
        <asp:Label runat="server" ID="lblComentarioTarea">Comentario de la Tarea:</asp:Label>
        <asp:TextBox runat="server" ID="txtComentarioTarea"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvComentarioTarea" runat="server" ControlToValidate="txtComentarioTarea"
            ErrorMessage="* Campo Obligatorio" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        <div id="dvCargarTareas" style="display: none;">
        <br />
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
            DataSourceID="SqlDSTareas" AllowPaging="True">
            <Columns>
                <asp:BoundField DataField="idTarea" HeaderText="idTarea" InsertVisible="False" 
                    ReadOnly="True" SortExpression="idTarea" />
                <asp:BoundField DataField="nombreTarea" HeaderText="nombreTarea" 
                    SortExpression="nombreTarea" />
                <asp:BoundField DataField="fechaInicioTarea" HeaderText="fechaInicioTarea" 
                    SortExpression="fechaInicioTarea" />
                <asp:BoundField DataField="fechaVencimientoTarea" 
                    HeaderText="fechaVencimientoTarea" SortExpression="fechaVencimientoTarea" />
                <asp:BoundField DataField="fechaTerminacionTarea" 
                    HeaderText="fechaTerminacionTarea" SortExpression="fechaTerminacionTarea" />
                <asp:BoundField DataField="comentarioTarea" HeaderText="comentarioTarea" 
                    SortExpression="comentarioTarea" />
            </Columns>
        </asp:GridView>
        <br />
        <asp:SqlDataSource ID="SqlDSTareas" runat="server" 
            ConnectionString="<%$ ConnectionStrings:BDTareasConnectionString %>" 
            
                SelectCommand="SELECT idTarea, nombreTarea, fechaInicioTarea, fechaVencimientoTarea, fechaTerminacionTarea, comentarioTarea FROM tbTarea WHERE (fechaTerminacionTarea = (SELECT CONVERT (date, GETDATE()) AS Expr1))">
        </asp:SqlDataSource> 
        
        </div> 
        <br />
        &nbsp; 
        <img alt="" src="image/cargar.jpeg" onclick="cargarTarea()" 
            style="height: 70px; width: 79px" tabindex="cargar" />
     
        <asp:ImageButton ID="imgbtnInsertarTarea" runat="server" 
            ImageUrl="~/app/image/insertar.jpeg" onclick="ImageButton1_Click" 
            ToolTip="Insertar Nueva Tarea" />
        </div>
    </form>
</body>
</html>
