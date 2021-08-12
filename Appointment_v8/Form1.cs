using DevExpress.XtraScheduler;
using System;

namespace Appointment_v8
{
    public partial class Form1 : DevExpress.XtraBars.Ribbon.RibbonForm
    {
        public Form1()
        {
            InitializeComponent();

        }

        private void Form1_Load(object sender, EventArgs e)
        {
            // TODO: This line of code loads data into the 'managementDataSet.Appointments' table. You can move, or remove it, as needed.
            this.appointmentsTableAdapter.Fill(this.managementDataSet.Appointments);

            schedulerControl1.Storage.Appointments.CommitIdToDataSource = false;

        }
        #region #Appointment
        private void schedulerDataStorage1_AppointmentsChanged(object sender, DevExpress.XtraScheduler.PersistentObjectsEventArgs e)
        {
            CommitTask();
        }
        private void schedulerDataStorage1_AppointmentsDeleted(object sender, DevExpress.XtraScheduler.PersistentObjectsEventArgs e)
        {
            CommitTask();
        }
        private void schedulerDataStorage1_AppointmentsInserted(object sender, DevExpress.XtraScheduler.PersistentObjectsEventArgs e)
        {
            CommitTask();
        }
        void CommitTask()
        {
            appointmentsTableAdapter.Update(managementDataSet);
            managementDataSet.AcceptChanges();
        }
        #endregion #Appointment

    }
}
