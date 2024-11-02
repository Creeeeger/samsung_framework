package com.samsung.android.sume.core.service;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.inputmethodservice.navigationbar.NavigationBarInflaterView;
import android.os.ConditionVariable;
import android.os.IBinder;
import android.util.Log;
import com.samsung.android.sume.core.Def;
import com.samsung.android.sume.core.controller.MediaController;
import com.samsung.android.sume.core.functional.ExceptionHandler;
import com.samsung.android.sume.core.message.Event;
import com.samsung.android.sume.core.message.Message;
import com.samsung.android.sume.core.message.Request;
import com.samsung.android.sume.core.message.Response;
import com.samsung.android.sume.core.message.ResponseHolder;
import com.samsung.android.sume.core.service.LocalService;
import java.lang.ref.WeakReference;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.function.Consumer;

/* loaded from: classes4.dex */
public class LocalServiceProxy implements ServiceProxy, MediaController.OnEventListener {
    private static final String TAG = Def.tagOf((Class<?>) LocalServiceProxy.class);
    private final Context context;
    private WeakReference<MediaController.OnEventListener> eventListener;
    private ExceptionHandler exceptionHandler;
    private LocalService localService;
    private int mediaFilterControllerId;
    private final ConditionVariable mfControllerSync = new ConditionVariable();
    private final BlockingQueue<Request> requestChannel = new LinkedBlockingQueue();
    private ExecutorService requestThreadPool = Executors.newCachedThreadPool();
    private final List<ResponseHolder> responseList = new CopyOnWriteArrayList();
    private ServiceConnection connection = new ServiceConnection() { // from class: com.samsung.android.sume.core.service.LocalServiceProxy.1
        final /* synthetic */ MediaController.OnEventListener val$eventListener;

        AnonymousClass1(MediaController.OnEventListener this) {
            this = this;
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName name, IBinder service) {
            LocalServiceProxy.this.localService = ((LocalService.LocalBinder) service).getService();
            LocalServiceProxy.this.localService.setEventListener(this);
            LocalServiceProxy localServiceProxy = LocalServiceProxy.this;
            localServiceProxy.mediaFilterControllerId = localServiceProxy.localService.createMediaFilterController();
            LocalServiceProxy.this.mfControllerSync.open();
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName name) {
            Log.e(LocalServiceProxy.TAG, "onServiceDisconnected E");
            Exception exception = new IllegalStateException("service disconnected abnormally");
            LocalServiceProxy.this.onError(Response.of(-4, exception));
            Log.e(LocalServiceProxy.TAG, "onServiceDisconnected X");
        }

        @Override // android.content.ServiceConnection
        public void onBindingDied(ComponentName name) {
            super.onBindingDied(name);
        }

        @Override // android.content.ServiceConnection
        public void onNullBinding(ComponentName name) {
            super.onNullBinding(name);
        }
    };
    private Future<Void> requestJob = this.requestThreadPool.submit(new Runnable() { // from class: com.samsung.android.sume.core.service.LocalServiceProxy$$ExternalSyntheticLambda3
        @Override // java.lang.Runnable
        public final void run() {
            LocalServiceProxy.this.m8820x9a09a3ff();
        }
    });

    public LocalServiceProxy(Context context, Class<?> serviceClass, Map<Integer, Object> options) {
        this.context = context;
        Intent intent = new Intent(context, serviceClass);
        if (options.containsKey(0)) {
            intent.setAction("start-foreground");
        }
        if (options.containsKey(1)) {
            context.startService(intent);
        }
        boolean success = context.bindService(intent, this.connection, 1);
        Log.d(TAG, "success to bind: " + success);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.samsung.android.sume.core.service.LocalServiceProxy$1 */
    /* loaded from: classes4.dex */
    public class AnonymousClass1 implements ServiceConnection {
        final /* synthetic */ MediaController.OnEventListener val$eventListener;

        AnonymousClass1(LocalServiceProxy this) {
            this = this;
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName name, IBinder service) {
            LocalServiceProxy.this.localService = ((LocalService.LocalBinder) service).getService();
            LocalServiceProxy.this.localService.setEventListener(this);
            LocalServiceProxy localServiceProxy = LocalServiceProxy.this;
            localServiceProxy.mediaFilterControllerId = localServiceProxy.localService.createMediaFilterController();
            LocalServiceProxy.this.mfControllerSync.open();
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName name) {
            Log.e(LocalServiceProxy.TAG, "onServiceDisconnected E");
            Exception exception = new IllegalStateException("service disconnected abnormally");
            LocalServiceProxy.this.onError(Response.of(-4, exception));
            Log.e(LocalServiceProxy.TAG, "onServiceDisconnected X");
        }

        @Override // android.content.ServiceConnection
        public void onBindingDied(ComponentName name) {
            super.onBindingDied(name);
        }

        @Override // android.content.ServiceConnection
        public void onNullBinding(ComponentName name) {
            super.onNullBinding(name);
        }
    }

    /* renamed from: lambda$new$0$com-samsung-android-sume-core-service-LocalServiceProxy */
    public /* synthetic */ void m8820x9a09a3ff() {
        this.mfControllerSync.block();
        while (true) {
            try {
                Request request = this.requestChannel.take();
                Log.d(TAG, "take request: " + request);
                Response response = this.localService.request(this.mediaFilterControllerId, request).get();
                if (response != null && response.getResponseListener() != null) {
                    response.getResponseListener().accept(response);
                }
            } catch (InterruptedException e) {
                Log.w(TAG, "request canceled or release");
                return;
            } catch (NullPointerException e2) {
                Log.e(TAG, "NullPointerException from response");
                return;
            } catch (Exception e3) {
                Log.e(TAG, "Abnormal Exception at requestThreadPool: " + e3.getMessage());
                return;
            }
        }
    }

    @Override // com.samsung.android.sume.core.service.ServiceProxy
    public ExceptionHandler getExceptionHandler() {
        return this.exceptionHandler;
    }

    @Override // com.samsung.android.sume.core.service.ServiceProxy
    public void setExceptionHandler(ExceptionHandler exceptionHandler) {
        this.exceptionHandler = exceptionHandler;
    }

    @Override // com.samsung.android.sume.core.service.ServiceProxy
    public IBinder getBinder() {
        return this.localService.binder;
    }

    @Override // com.samsung.android.sume.core.service.ServiceProxy
    public Future<Response> request(final Request request) {
        final ResponseHolder responseHolder = new ResponseHolder(request.getCode());
        this.responseList.add(responseHolder);
        try {
            if (request.isOneWay()) {
                responseHolder.put(Response.of(0));
            } else {
                Log.d(TAG, "add response-listener for " + request.getCode());
                request.then(new Consumer() { // from class: com.samsung.android.sume.core.service.LocalServiceProxy$$ExternalSyntheticLambda4
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        LocalServiceProxy.lambda$request$1(ResponseHolder.this, (Message) obj);
                    }
                });
            }
            this.requestChannel.put(request);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        return this.requestThreadPool.submit(new Callable() { // from class: com.samsung.android.sume.core.service.LocalServiceProxy$$ExternalSyntheticLambda5
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return LocalServiceProxy.this.m8821x6d0c7cb0(request, responseHolder);
            }
        });
    }

    public static /* synthetic */ void lambda$request$1(ResponseHolder responseHolder, Message response) {
        responseHolder.put((Response) response);
        responseHolder.signal();
    }

    /* renamed from: lambda$request$2$com-samsung-android-sume-core-service-LocalServiceProxy */
    public /* synthetic */ Response m8821x6d0c7cb0(Request request, ResponseHolder responseHolder) throws Exception {
        ExceptionHandler exceptionHandler;
        try {
            if (!request.isOneWay()) {
                String str = TAG;
                Log.d(str, "wait response...E: " + request.getCode());
                responseHolder.await();
                Log.d(str, "wait response...X: " + request.getCode());
            }
        } catch (Exception e) {
            if (responseHolder.get() != null) {
                responseHolder.get().setException(e);
            } else {
                e.printStackTrace();
            }
        }
        this.responseList.remove(responseHolder);
        Response response = responseHolder.reset();
        if (response.getException() != null && ((exceptionHandler = this.exceptionHandler) == null || !exceptionHandler.accept(response.getException()))) {
            throw response.getException();
        }
        return response;
    }

    @Override // com.samsung.android.sume.core.service.ServiceProxy
    public void release() {
        String str = TAG;
        Log.d(str, "release E");
        LocalService localService = this.localService;
        if (localService != null) {
            localService.releaseMediaFilterController(this.mediaFilterControllerId);
        }
        if (this.connection != null) {
            Log.d(str, "try to unbind");
            try {
                this.context.unbindService(this.connection);
            } catch (NoSuchElementException e) {
                Log.w(TAG, "broken connection: " + e.getMessage());
            }
            this.connection = null;
        }
        this.responseList.forEach(new Consumer() { // from class: com.samsung.android.sume.core.service.LocalServiceProxy$$ExternalSyntheticLambda0
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                LocalServiceProxy.lambda$release$3((ResponseHolder) obj);
            }
        });
        Future<Void> future = this.requestJob;
        if (future != null) {
            future.cancel(true);
            this.requestJob = null;
        }
        ExecutorService executorService = this.requestThreadPool;
        if (executorService != null) {
            executorService.shutdown();
            this.requestThreadPool = null;
        }
        Log.d(TAG, "release X");
    }

    public static /* synthetic */ void lambda$release$3(ResponseHolder it) {
        Log.i(TAG, "send canceled response for " + it.getCode() + " to finish up releasing");
        it.put(Response.of(702));
        it.signal();
    }

    @Override // com.samsung.android.sume.core.service.ServiceProxy
    public void setEventListener(MediaController.OnEventListener eventListener) {
        this.eventListener = new WeakReference<>(eventListener);
    }

    private void onWarn(final Response response) {
        Log.d(TAG, "onWarn: " + response);
        this.responseList.forEach(new Consumer() { // from class: com.samsung.android.sume.core.service.LocalServiceProxy$$ExternalSyntheticLambda2
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                LocalServiceProxy.lambda$onWarn$4(Response.this, (ResponseHolder) obj);
            }
        });
    }

    public static /* synthetic */ void lambda$onWarn$4(Response response, ResponseHolder it) {
        String str = TAG;
        Log.w(str, "send response(" + response.getCode() + ") for request(" + it.getCode() + NavigationBarInflaterView.KEY_CODE_END);
        Log.w(str, "\tmessage: " + ((String) response.get("message", "")));
        it.put(response);
        it.signal();
    }

    public void onError(final Response response) {
        final Exception exception = response.getException();
        ExceptionHandler exceptionHandler = this.exceptionHandler;
        if (exceptionHandler != null) {
            exceptionHandler.accept(exception);
        } else {
            this.responseList.forEach(new Consumer() { // from class: com.samsung.android.sume.core.service.LocalServiceProxy$$ExternalSyntheticLambda1
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    LocalServiceProxy.lambda$onError$5(Response.this, exception, (ResponseHolder) obj);
                }
            });
        }
    }

    public static /* synthetic */ void lambda$onError$5(Response response, Exception exception, ResponseHolder it) {
        String str = TAG;
        Log.e(str, "send response(" + response.getCode() + ") for request(" + it.getCode() + NavigationBarInflaterView.KEY_CODE_END);
        Log.e(str, "\tmessage: " + ((String) response.get("message", "")));
        if (it.get() != null) {
            it.get().setException(exception);
        } else {
            it.put(Response.of(-4, exception));
        }
        it.signal();
    }

    @Override // com.samsung.android.sume.core.controller.MediaController.OnEventListener
    public void onEvent(Event event) {
        Log.d(TAG, "onEvent: " + event);
        Response response = Response.of(event);
        if (response.isError()) {
            onError(response);
            return;
        }
        if (response.isWarn()) {
            onWarn(response);
            return;
        }
        MediaController.OnEventListener eventListener = this.eventListener.get();
        if (eventListener != null) {
            eventListener.onEvent(event);
        }
    }
}
