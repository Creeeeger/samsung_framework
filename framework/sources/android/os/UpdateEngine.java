package android.os;

import android.annotation.SystemApi;
import android.content.res.AssetFileDescriptor;
import android.os.IUpdateEngine;
import android.os.IUpdateEngineCallback;

@SystemApi
/* loaded from: classes3.dex */
public class UpdateEngine {
    private static final String TAG = "UpdateEngine";
    private static final String UPDATE_ENGINE_SERVICE = "android.os.UpdateEngineService";
    private final IUpdateEngine mUpdateEngine;
    private IUpdateEngineCallback mUpdateEngineCallback = null;
    private final Object mUpdateEngineCallbackLock = new Object();

    /* loaded from: classes3.dex */
    public @interface ErrorCode {
    }

    /* loaded from: classes3.dex */
    public static final class ErrorCodeConstants {
        public static final int DEVICE_CORRUPTED = 61;
        public static final int DOWNLOAD_PAYLOAD_VERIFICATION_ERROR = 12;
        public static final int DOWNLOAD_TRANSFER_ERROR = 9;
        public static final int ERROR = 1;
        public static final int FILESYSTEM_COPIER_ERROR = 4;
        public static final int INSTALL_DEVICE_OPEN_ERROR = 7;
        public static final int KERNEL_DEVICE_OPEN_ERROR = 8;
        public static final int NOT_ENOUGH_SPACE = 60;
        public static final int PAYLOAD_HASH_MISMATCH_ERROR = 10;
        public static final int PAYLOAD_MISMATCHED_TYPE_ERROR = 6;
        public static final int PAYLOAD_SIZE_MISMATCH_ERROR = 11;
        public static final int PAYLOAD_TIMESTAMP_ERROR = 51;
        public static final int POST_INSTALL_RUNNER_ERROR = 5;
        public static final int SUCCESS = 0;
        public static final int UPDATED_BUT_NOT_ACTIVE = 52;
    }

    /* loaded from: classes3.dex */
    public static final class UpdateStatusConstants {
        public static final int ATTEMPTING_ROLLBACK = 8;
        public static final int CHECKING_FOR_UPDATE = 1;
        public static final int DISABLED = 9;
        public static final int DOWNLOADING = 3;
        public static final int FINALIZING = 5;
        public static final int IDLE = 0;
        public static final int REPORTING_ERROR_EVENT = 7;
        public static final int UPDATED_NEED_REBOOT = 6;
        public static final int UPDATE_AVAILABLE = 2;
        public static final int VERIFYING = 4;
    }

    public UpdateEngine() {
        IUpdateEngine asInterface = IUpdateEngine.Stub.asInterface(ServiceManager.getService(UPDATE_ENGINE_SERVICE));
        this.mUpdateEngine = asInterface;
        if (asInterface == null) {
            throw new IllegalStateException("Failed to find update_engine");
        }
    }

    /* renamed from: android.os.UpdateEngine$1 */
    /* loaded from: classes3.dex */
    public class AnonymousClass1 extends IUpdateEngineCallback.Stub {
        final /* synthetic */ UpdateEngineCallback val$callback;
        final /* synthetic */ Handler val$handler;

        AnonymousClass1(Handler handler, UpdateEngineCallback updateEngineCallback) {
            handler = handler;
            callback = updateEngineCallback;
        }

        /* renamed from: android.os.UpdateEngine$1$1 */
        /* loaded from: classes3.dex */
        class RunnableC00051 implements Runnable {
            final /* synthetic */ float val$percent;
            final /* synthetic */ int val$status;

            RunnableC00051(int i, float f) {
                status = i;
                percent = f;
            }

            @Override // java.lang.Runnable
            public void run() {
                callback.onStatusUpdate(status, percent);
            }
        }

        @Override // android.os.IUpdateEngineCallback
        public void onStatusUpdate(int status, float percent) {
            Handler handler = handler;
            if (handler != null) {
                handler.post(new Runnable() { // from class: android.os.UpdateEngine.1.1
                    final /* synthetic */ float val$percent;
                    final /* synthetic */ int val$status;

                    RunnableC00051(int status2, float percent2) {
                        status = status2;
                        percent = percent2;
                    }

                    @Override // java.lang.Runnable
                    public void run() {
                        callback.onStatusUpdate(status, percent);
                    }
                });
            } else {
                callback.onStatusUpdate(status2, percent2);
            }
        }

        /* renamed from: android.os.UpdateEngine$1$2 */
        /* loaded from: classes3.dex */
        class AnonymousClass2 implements Runnable {
            final /* synthetic */ int val$errorCode;

            AnonymousClass2(int i) {
                errorCode = i;
            }

            @Override // java.lang.Runnable
            public void run() {
                callback.onPayloadApplicationComplete(errorCode);
            }
        }

        @Override // android.os.IUpdateEngineCallback
        public void onPayloadApplicationComplete(int errorCode) {
            Handler handler = handler;
            if (handler != null) {
                handler.post(new Runnable() { // from class: android.os.UpdateEngine.1.2
                    final /* synthetic */ int val$errorCode;

                    AnonymousClass2(int errorCode2) {
                        errorCode = errorCode2;
                    }

                    @Override // java.lang.Runnable
                    public void run() {
                        callback.onPayloadApplicationComplete(errorCode);
                    }
                });
            } else {
                callback.onPayloadApplicationComplete(errorCode2);
            }
        }
    }

    public boolean bind(UpdateEngineCallback callback, Handler handler) {
        boolean bind;
        synchronized (this.mUpdateEngineCallbackLock) {
            AnonymousClass1 anonymousClass1 = new IUpdateEngineCallback.Stub() { // from class: android.os.UpdateEngine.1
                final /* synthetic */ UpdateEngineCallback val$callback;
                final /* synthetic */ Handler val$handler;

                AnonymousClass1(Handler handler2, UpdateEngineCallback callback2) {
                    handler = handler2;
                    callback = callback2;
                }

                /* renamed from: android.os.UpdateEngine$1$1 */
                /* loaded from: classes3.dex */
                class RunnableC00051 implements Runnable {
                    final /* synthetic */ float val$percent;
                    final /* synthetic */ int val$status;

                    RunnableC00051(int status2, float percent2) {
                        status = status2;
                        percent = percent2;
                    }

                    @Override // java.lang.Runnable
                    public void run() {
                        callback.onStatusUpdate(status, percent);
                    }
                }

                @Override // android.os.IUpdateEngineCallback
                public void onStatusUpdate(int status2, float percent2) {
                    Handler handler2 = handler;
                    if (handler2 != null) {
                        handler2.post(new Runnable() { // from class: android.os.UpdateEngine.1.1
                            final /* synthetic */ float val$percent;
                            final /* synthetic */ int val$status;

                            RunnableC00051(int status22, float percent22) {
                                status = status22;
                                percent = percent22;
                            }

                            @Override // java.lang.Runnable
                            public void run() {
                                callback.onStatusUpdate(status, percent);
                            }
                        });
                    } else {
                        callback.onStatusUpdate(status22, percent22);
                    }
                }

                /* renamed from: android.os.UpdateEngine$1$2 */
                /* loaded from: classes3.dex */
                class AnonymousClass2 implements Runnable {
                    final /* synthetic */ int val$errorCode;

                    AnonymousClass2(int errorCode2) {
                        errorCode = errorCode2;
                    }

                    @Override // java.lang.Runnable
                    public void run() {
                        callback.onPayloadApplicationComplete(errorCode);
                    }
                }

                @Override // android.os.IUpdateEngineCallback
                public void onPayloadApplicationComplete(int errorCode2) {
                    Handler handler2 = handler;
                    if (handler2 != null) {
                        handler2.post(new Runnable() { // from class: android.os.UpdateEngine.1.2
                            final /* synthetic */ int val$errorCode;

                            AnonymousClass2(int errorCode22) {
                                errorCode = errorCode22;
                            }

                            @Override // java.lang.Runnable
                            public void run() {
                                callback.onPayloadApplicationComplete(errorCode);
                            }
                        });
                    } else {
                        callback.onPayloadApplicationComplete(errorCode22);
                    }
                }
            };
            this.mUpdateEngineCallback = anonymousClass1;
            try {
                bind = this.mUpdateEngine.bind(anonymousClass1);
            } catch (RemoteException e) {
                throw e.rethrowFromSystemServer();
            }
        }
        return bind;
    }

    public boolean bind(UpdateEngineCallback callback) {
        return bind(callback, null);
    }

    public void applyPayload(String url, long offset, long size, String[] headerKeyValuePairs) {
        try {
            this.mUpdateEngine.applyPayload(url, offset, size, headerKeyValuePairs);
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    public void applyPayload(AssetFileDescriptor assetFd, String[] headerKeyValuePairs) {
        try {
            this.mUpdateEngine.applyPayloadFd(assetFd.getParcelFileDescriptor(), assetFd.getStartOffset(), assetFd.getLength(), headerKeyValuePairs);
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    public void cancel() {
        try {
            this.mUpdateEngine.cancel();
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    public void suspend() {
        try {
            this.mUpdateEngine.suspend();
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    public void resume() {
        try {
            this.mUpdateEngine.resume();
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    public void resetStatus() {
        try {
            this.mUpdateEngine.resetStatus();
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    public void setShouldSwitchSlotOnReboot(String payloadMetadataFilename) {
        try {
            this.mUpdateEngine.setShouldSwitchSlotOnReboot(payloadMetadataFilename);
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    public void resetShouldSwitchSlotOnReboot() {
        try {
            this.mUpdateEngine.resetShouldSwitchSlotOnReboot();
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    public boolean unbind() {
        synchronized (this.mUpdateEngineCallbackLock) {
            IUpdateEngineCallback iUpdateEngineCallback = this.mUpdateEngineCallback;
            if (iUpdateEngineCallback == null) {
                return true;
            }
            try {
                boolean result = this.mUpdateEngine.unbind(iUpdateEngineCallback);
                this.mUpdateEngineCallback = null;
                return result;
            } catch (RemoteException e) {
                throw e.rethrowFromSystemServer();
            }
        }
    }

    public boolean verifyPayloadMetadata(String payloadMetadataFilename) {
        try {
            return this.mUpdateEngine.verifyPayloadApplicable(payloadMetadataFilename);
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    /* loaded from: classes3.dex */
    public static final class AllocateSpaceResult {
        private int mErrorCode;
        private long mFreeSpaceRequired;

        /* synthetic */ AllocateSpaceResult(AllocateSpaceResultIA allocateSpaceResultIA) {
            this();
        }

        private AllocateSpaceResult() {
            this.mErrorCode = 0;
            this.mFreeSpaceRequired = 0L;
        }

        public int getErrorCode() {
            return this.mErrorCode;
        }

        public long getFreeSpaceRequired() {
            int i = this.mErrorCode;
            if (i == 0) {
                return 0L;
            }
            if (i == 60) {
                return this.mFreeSpaceRequired;
            }
            throw new IllegalStateException(String.format("getFreeSpaceRequired() is not available when error code is %d", Integer.valueOf(this.mErrorCode)));
        }
    }

    public AllocateSpaceResult allocateSpace(String payloadMetadataFilename, String[] headerKeyValuePairs) {
        int i;
        AllocateSpaceResult result = new AllocateSpaceResult();
        try {
            result.mFreeSpaceRequired = this.mUpdateEngine.allocateSpaceForPayload(payloadMetadataFilename, headerKeyValuePairs);
            if (result.mFreeSpaceRequired == 0) {
                i = 0;
            } else {
                i = 60;
            }
            result.mErrorCode = i;
            return result;
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        } catch (ServiceSpecificException e2) {
            result.mErrorCode = e2.errorCode;
            result.mFreeSpaceRequired = 0L;
            return result;
        }
    }

    /* loaded from: classes3.dex */
    private static class CleanupAppliedPayloadCallback extends IUpdateEngineCallback.Stub {
        private boolean mCompleted;
        private int mErrorCode;
        private Object mLock;

        /* synthetic */ CleanupAppliedPayloadCallback(CleanupAppliedPayloadCallbackIA cleanupAppliedPayloadCallbackIA) {
            this();
        }

        private CleanupAppliedPayloadCallback() {
            this.mErrorCode = 1;
            this.mCompleted = false;
            this.mLock = new Object();
        }

        public int getResult() {
            int i;
            synchronized (this.mLock) {
                while (!this.mCompleted) {
                    try {
                        this.mLock.wait();
                    } catch (InterruptedException e) {
                    }
                }
                i = this.mErrorCode;
            }
            return i;
        }

        @Override // android.os.IUpdateEngineCallback
        public void onStatusUpdate(int status, float percent) {
        }

        @Override // android.os.IUpdateEngineCallback
        public void onPayloadApplicationComplete(int errorCode) {
            synchronized (this.mLock) {
                this.mErrorCode = errorCode;
                this.mCompleted = true;
                this.mLock.notifyAll();
            }
        }
    }

    public int cleanupAppliedPayload() {
        CleanupAppliedPayloadCallback callback = new CleanupAppliedPayloadCallback();
        try {
            this.mUpdateEngine.cleanupSuccessfulUpdate(callback);
            return callback.getResult();
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }
}
