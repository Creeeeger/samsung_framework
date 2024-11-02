package android.telephony.mbms;

import android.os.Binder;
import android.os.RemoteException;
import android.telephony.mbms.IDownloadStatusListener;
import java.util.concurrent.Executor;

/* loaded from: classes3.dex */
public class InternalDownloadStatusListener extends IDownloadStatusListener.Stub {
    private final DownloadStatusListener mAppListener;
    private final Executor mExecutor;
    private volatile boolean mIsStopped = false;

    public InternalDownloadStatusListener(DownloadStatusListener appCallback, Executor executor) {
        this.mAppListener = appCallback;
        this.mExecutor = executor;
    }

    @Override // android.telephony.mbms.IDownloadStatusListener
    public void onStatusUpdated(DownloadRequest request, FileInfo fileInfo, int status) throws RemoteException {
        if (this.mIsStopped) {
            return;
        }
        long token = Binder.clearCallingIdentity();
        try {
            this.mExecutor.execute(new Runnable() { // from class: android.telephony.mbms.InternalDownloadStatusListener.1
                final /* synthetic */ FileInfo val$fileInfo;
                final /* synthetic */ DownloadRequest val$request;
                final /* synthetic */ int val$status;

                AnonymousClass1(DownloadRequest request2, FileInfo fileInfo2, int status2) {
                    request = request2;
                    fileInfo = fileInfo2;
                    status = status2;
                }

                @Override // java.lang.Runnable
                public void run() {
                    InternalDownloadStatusListener.this.mAppListener.onStatusUpdated(request, fileInfo, status);
                }
            });
        } finally {
            Binder.restoreCallingIdentity(token);
        }
    }

    /* renamed from: android.telephony.mbms.InternalDownloadStatusListener$1 */
    /* loaded from: classes3.dex */
    class AnonymousClass1 implements Runnable {
        final /* synthetic */ FileInfo val$fileInfo;
        final /* synthetic */ DownloadRequest val$request;
        final /* synthetic */ int val$status;

        AnonymousClass1(DownloadRequest request2, FileInfo fileInfo2, int status2) {
            request = request2;
            fileInfo = fileInfo2;
            status = status2;
        }

        @Override // java.lang.Runnable
        public void run() {
            InternalDownloadStatusListener.this.mAppListener.onStatusUpdated(request, fileInfo, status);
        }
    }

    public void stop() {
        this.mIsStopped = true;
    }
}
