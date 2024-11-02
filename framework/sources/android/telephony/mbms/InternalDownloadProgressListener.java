package android.telephony.mbms;

import android.os.Binder;
import android.os.RemoteException;
import android.telephony.mbms.IDownloadProgressListener;
import java.util.concurrent.Executor;

/* loaded from: classes3.dex */
public class InternalDownloadProgressListener extends IDownloadProgressListener.Stub {
    private final DownloadProgressListener mAppListener;
    private final Executor mExecutor;
    private volatile boolean mIsStopped = false;

    public InternalDownloadProgressListener(DownloadProgressListener appListener, Executor executor) {
        this.mAppListener = appListener;
        this.mExecutor = executor;
    }

    @Override // android.telephony.mbms.IDownloadProgressListener
    public void onProgressUpdated(DownloadRequest request, FileInfo fileInfo, int currentDownloadSize, int fullDownloadSize, int currentDecodedSize, int fullDecodedSize) throws RemoteException {
        if (this.mIsStopped) {
            return;
        }
        long token = Binder.clearCallingIdentity();
        try {
            this.mExecutor.execute(new Runnable() { // from class: android.telephony.mbms.InternalDownloadProgressListener.1
                final /* synthetic */ int val$currentDecodedSize;
                final /* synthetic */ int val$currentDownloadSize;
                final /* synthetic */ FileInfo val$fileInfo;
                final /* synthetic */ int val$fullDecodedSize;
                final /* synthetic */ int val$fullDownloadSize;
                final /* synthetic */ DownloadRequest val$request;

                AnonymousClass1(DownloadRequest request2, FileInfo fileInfo2, int currentDownloadSize2, int fullDownloadSize2, int currentDecodedSize2, int fullDecodedSize2) {
                    request = request2;
                    fileInfo = fileInfo2;
                    currentDownloadSize = currentDownloadSize2;
                    fullDownloadSize = fullDownloadSize2;
                    currentDecodedSize = currentDecodedSize2;
                    fullDecodedSize = fullDecodedSize2;
                }

                @Override // java.lang.Runnable
                public void run() {
                    InternalDownloadProgressListener.this.mAppListener.onProgressUpdated(request, fileInfo, currentDownloadSize, fullDownloadSize, currentDecodedSize, fullDecodedSize);
                }
            });
        } finally {
            Binder.restoreCallingIdentity(token);
        }
    }

    /* renamed from: android.telephony.mbms.InternalDownloadProgressListener$1 */
    /* loaded from: classes3.dex */
    class AnonymousClass1 implements Runnable {
        final /* synthetic */ int val$currentDecodedSize;
        final /* synthetic */ int val$currentDownloadSize;
        final /* synthetic */ FileInfo val$fileInfo;
        final /* synthetic */ int val$fullDecodedSize;
        final /* synthetic */ int val$fullDownloadSize;
        final /* synthetic */ DownloadRequest val$request;

        AnonymousClass1(DownloadRequest request2, FileInfo fileInfo2, int currentDownloadSize2, int fullDownloadSize2, int currentDecodedSize2, int fullDecodedSize2) {
            request = request2;
            fileInfo = fileInfo2;
            currentDownloadSize = currentDownloadSize2;
            fullDownloadSize = fullDownloadSize2;
            currentDecodedSize = currentDecodedSize2;
            fullDecodedSize = fullDecodedSize2;
        }

        @Override // java.lang.Runnable
        public void run() {
            InternalDownloadProgressListener.this.mAppListener.onProgressUpdated(request, fileInfo, currentDownloadSize, fullDownloadSize, currentDecodedSize, fullDecodedSize);
        }
    }

    public void stop() {
        this.mIsStopped = true;
    }
}
