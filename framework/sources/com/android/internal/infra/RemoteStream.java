package com.android.internal.infra;

import android.os.AsyncTask;
import android.os.ParcelFileDescriptor;
import com.android.internal.util.FunctionalUtils;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import libcore.io.IoUtils;

/* loaded from: classes4.dex */
public abstract class RemoteStream<RES, IOSTREAM extends Closeable> extends AndroidFuture<RES> implements Runnable {
    private final FunctionalUtils.ThrowingFunction<IOSTREAM, RES> mHandleStream;
    private volatile ParcelFileDescriptor mLocalPipe;

    /* synthetic */ RemoteStream(FunctionalUtils.ThrowingConsumer throwingConsumer, FunctionalUtils.ThrowingFunction throwingFunction, Executor executor, boolean z, RemoteStreamIA remoteStreamIA) {
        this(throwingConsumer, throwingFunction, executor, z);
    }

    protected abstract IOSTREAM createStream(ParcelFileDescriptor parcelFileDescriptor);

    /* renamed from: com.android.internal.infra.RemoteStream$1 */
    /* loaded from: classes4.dex */
    public class AnonymousClass1<R> extends RemoteStream<R, InputStream> {
        AnonymousClass1(FunctionalUtils.ThrowingConsumer throwingConsumer, FunctionalUtils.ThrowingFunction throwingFunction, Executor backgroundExecutor, boolean read) {
            super(throwingConsumer, throwingFunction, backgroundExecutor, read);
        }

        @Override // com.android.internal.infra.RemoteStream
        public InputStream createStream(ParcelFileDescriptor fd) {
            return new ParcelFileDescriptor.AutoCloseInputStream(fd);
        }
    }

    public static <R> AndroidFuture<R> receiveBytes(FunctionalUtils.ThrowingConsumer<ParcelFileDescriptor> ipc, FunctionalUtils.ThrowingFunction<InputStream, R> read) {
        return new RemoteStream<R, InputStream>(ipc, read, AsyncTask.THREAD_POOL_EXECUTOR, true) { // from class: com.android.internal.infra.RemoteStream.1
            AnonymousClass1(FunctionalUtils.ThrowingConsumer ipc2, FunctionalUtils.ThrowingFunction read2, Executor backgroundExecutor, boolean read3) {
                super(ipc2, read2, backgroundExecutor, read3);
            }

            @Override // com.android.internal.infra.RemoteStream
            public InputStream createStream(ParcelFileDescriptor fd) {
                return new ParcelFileDescriptor.AutoCloseInputStream(fd);
            }
        };
    }

    public static AndroidFuture<byte[]> receiveBytes(FunctionalUtils.ThrowingConsumer<ParcelFileDescriptor> ipc) {
        return receiveBytes(ipc, new FunctionalUtils.ThrowingFunction() { // from class: com.android.internal.infra.RemoteStream$$ExternalSyntheticLambda2
            @Override // com.android.internal.util.FunctionalUtils.ThrowingFunction
            public final Object applyOrThrow(Object obj) {
                return RemoteStream.readAll((InputStream) obj);
            }
        });
    }

    public static byte[] readAll(InputStream inputStream) throws IOException {
        ByteArrayOutputStream combinedBuffer = new ByteArrayOutputStream();
        byte[] buffer = new byte[16384];
        while (true) {
            int numRead = inputStream.read(buffer);
            if (numRead != -1) {
                combinedBuffer.write(buffer, 0, numRead);
            } else {
                return combinedBuffer.toByteArray();
            }
        }
    }

    /* renamed from: com.android.internal.infra.RemoteStream$2 */
    /* loaded from: classes4.dex */
    public class AnonymousClass2<R> extends RemoteStream<R, OutputStream> {
        AnonymousClass2(FunctionalUtils.ThrowingConsumer throwingConsumer, FunctionalUtils.ThrowingFunction throwingFunction, Executor backgroundExecutor, boolean read) {
            super(throwingConsumer, throwingFunction, backgroundExecutor, read);
        }

        @Override // com.android.internal.infra.RemoteStream
        public OutputStream createStream(ParcelFileDescriptor fd) {
            return new ParcelFileDescriptor.AutoCloseOutputStream(fd);
        }
    }

    public static <R> AndroidFuture<R> sendBytes(FunctionalUtils.ThrowingConsumer<ParcelFileDescriptor> ipc, FunctionalUtils.ThrowingFunction<OutputStream, R> write) {
        return new RemoteStream<R, OutputStream>(ipc, write, AsyncTask.THREAD_POOL_EXECUTOR, false) { // from class: com.android.internal.infra.RemoteStream.2
            AnonymousClass2(FunctionalUtils.ThrowingConsumer ipc2, FunctionalUtils.ThrowingFunction write2, Executor backgroundExecutor, boolean read) {
                super(ipc2, write2, backgroundExecutor, read);
            }

            @Override // com.android.internal.infra.RemoteStream
            public OutputStream createStream(ParcelFileDescriptor fd) {
                return new ParcelFileDescriptor.AutoCloseOutputStream(fd);
            }
        };
    }

    public static AndroidFuture<Void> sendBytes(FunctionalUtils.ThrowingConsumer<ParcelFileDescriptor> ipc, final FunctionalUtils.ThrowingConsumer<OutputStream> write) {
        return sendBytes(ipc, new FunctionalUtils.ThrowingFunction() { // from class: com.android.internal.infra.RemoteStream$$ExternalSyntheticLambda0
            @Override // com.android.internal.util.FunctionalUtils.ThrowingFunction
            public final Object applyOrThrow(Object obj) {
                return RemoteStream.lambda$sendBytes$0(FunctionalUtils.ThrowingConsumer.this, (OutputStream) obj);
            }
        });
    }

    public static /* synthetic */ Void lambda$sendBytes$0(FunctionalUtils.ThrowingConsumer write, OutputStream os) throws Exception {
        write.acceptOrThrow(os);
        return null;
    }

    public static AndroidFuture<Void> sendBytes(FunctionalUtils.ThrowingConsumer<ParcelFileDescriptor> ipc, final byte[] data) {
        return sendBytes(ipc, new FunctionalUtils.ThrowingFunction() { // from class: com.android.internal.infra.RemoteStream$$ExternalSyntheticLambda1
            @Override // com.android.internal.util.FunctionalUtils.ThrowingFunction
            public final Object applyOrThrow(Object obj) {
                return RemoteStream.lambda$sendBytes$1(data, (OutputStream) obj);
            }
        });
    }

    public static /* synthetic */ Void lambda$sendBytes$1(byte[] data, OutputStream os) throws Exception {
        os.write(data);
        return null;
    }

    private RemoteStream(FunctionalUtils.ThrowingConsumer<ParcelFileDescriptor> ipc, FunctionalUtils.ThrowingFunction<IOSTREAM, RES> handleStream, Executor backgroundExecutor, boolean read) {
        this.mHandleStream = handleStream;
        try {
            ParcelFileDescriptor[] pipe = ParcelFileDescriptor.createPipe();
            ParcelFileDescriptor remotePipe = pipe[read ? (char) 1 : (char) 0];
            try {
                ipc.acceptOrThrow(remotePipe);
                if (remotePipe != null) {
                    remotePipe.close();
                }
                this.mLocalPipe = pipe[read ? (char) 0 : (char) 1];
                backgroundExecutor.execute(this);
                orTimeout(30L, TimeUnit.SECONDS);
            } finally {
            }
        } catch (Throwable e) {
            completeExceptionally(e);
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            IOSTREAM stream = createStream(this.mLocalPipe);
            try {
                complete(this.mHandleStream.applyOrThrow(stream));
                if (stream != null) {
                    stream.close();
                }
            } finally {
            }
        } catch (Throwable t) {
            completeExceptionally(t);
        }
    }

    @Override // com.android.internal.infra.AndroidFuture
    public void onCompleted(RES res, Throwable err) {
        super.onCompleted(res, err);
        IoUtils.closeQuietly(this.mLocalPipe);
    }
}
