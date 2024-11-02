package com.sec.android.diagmonagent.log.ged.scheduler;

import android.app.job.JobParameters;
import android.app.job.JobService;
import android.os.AsyncTask;
import android.util.Log;
import com.sec.android.diagmonagent.log.ged.util.DeviceUtils;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public class GEDJobService extends JobService {
    public AnonymousClass1 serverTask = null;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes3.dex */
    public class ServerTask extends AsyncTask {
        public ServerTask() {
        }

        @Override // android.os.AsyncTask
        public /* bridge */ /* synthetic */ Object doInBackground(Object[] objArr) {
            return doInBackground();
        }

        public void onPostExecute() {
        }

        /* JADX WARN: Removed duplicated region for block: B:30:0x0140  */
        /* JADX WARN: Removed duplicated region for block: B:81:0x0392  */
        /* JADX WARN: Removed duplicated region for block: B:82:0x039a  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public java.lang.Boolean doInBackground() {
            /*
                Method dump skipped, instructions count: 959
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: com.sec.android.diagmonagent.log.ged.scheduler.GEDJobService.ServerTask.doInBackground():java.lang.Boolean");
        }

        @Override // android.os.AsyncTask
        public /* bridge */ /* synthetic */ void onPostExecute(Object obj) {
            onPostExecute();
        }
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [android.os.AsyncTask, com.sec.android.diagmonagent.log.ged.scheduler.GEDJobService$1] */
    @Override // android.app.job.JobService
    public final boolean onStartJob(final JobParameters jobParameters) {
        int jobId = jobParameters.getJobId();
        Log.i(DeviceUtils.TAG, "Job Started : " + jobId);
        ?? r0 = new ServerTask() { // from class: com.sec.android.diagmonagent.log.ged.scheduler.GEDJobService.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super();
            }

            @Override // com.sec.android.diagmonagent.log.ged.scheduler.GEDJobService.ServerTask, android.os.AsyncTask
            public final /* bridge */ /* synthetic */ Object doInBackground(Object[] objArr) {
                return doInBackground();
            }

            @Override // com.sec.android.diagmonagent.log.ged.scheduler.GEDJobService.ServerTask, android.os.AsyncTask
            public final /* bridge */ /* synthetic */ void onPostExecute(Object obj) {
                onPostExecute();
            }

            @Override // com.sec.android.diagmonagent.log.ged.scheduler.GEDJobService.ServerTask
            public final Boolean doInBackground() {
                new JobParameters[]{jobParameters};
                return super.doInBackground();
            }

            @Override // com.sec.android.diagmonagent.log.ged.scheduler.GEDJobService.ServerTask
            public final void onPostExecute() {
                GEDJobService.this.jobFinished(jobParameters, false);
            }
        };
        this.serverTask = r0;
        r0.execute(new JobParameters[0]);
        return true;
    }

    @Override // android.app.job.JobService
    public final boolean onStopJob(JobParameters jobParameters) {
        AnonymousClass1 anonymousClass1 = this.serverTask;
        if (anonymousClass1 != null) {
            anonymousClass1.cancel(true);
        }
        return true;
    }
}
