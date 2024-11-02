package com.google.android.setupcompat.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.setupcompat.ISetupCompatService;
import com.google.android.setupcompat.partnerconfig.PartnerConfigHelper;
import com.google.android.setupcompat.util.Logger;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class SetupCompatServiceProvider {
    public static volatile SetupCompatServiceProvider instance;
    public final Context context;
    public static final Logger LOG = new Logger("SetupCompatServiceProvider");
    static final Intent COMPAT_SERVICE_INTENT = new Intent().setPackage(PartnerConfigHelper.SUW_PACKAGE_NAME).setAction("com.google.android.setupcompat.SetupCompatService.BIND");
    static boolean disableLooperCheckForTesting = false;
    final ServiceConnection serviceConnection = new ServiceConnection() { // from class: com.google.android.setupcompat.internal.SetupCompatServiceProvider.1
        @Override // android.content.ServiceConnection
        public final void onBindingDied(ComponentName componentName) {
            SetupCompatServiceProvider.this.swapServiceContextAndNotify(new ServiceContext(State.REBIND_REQUIRED));
        }

        @Override // android.content.ServiceConnection
        public final void onNullBinding(ComponentName componentName) {
            SetupCompatServiceProvider.this.swapServiceContextAndNotify(new ServiceContext(State.SERVICE_NOT_USABLE));
        }

        @Override // android.content.ServiceConnection
        public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            ISetupCompatService proxy;
            State state = State.CONNECTED;
            if (iBinder == null) {
                state = State.DISCONNECTED;
                SetupCompatServiceProvider.LOG.w("Binder is null when onServiceConnected was called!");
            }
            SetupCompatServiceProvider setupCompatServiceProvider = SetupCompatServiceProvider.this;
            int i = ISetupCompatService.Stub.$r8$clinit;
            if (iBinder == null) {
                proxy = null;
            } else {
                IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.setupcompat.ISetupCompatService");
                if (queryLocalInterface != null && (queryLocalInterface instanceof ISetupCompatService)) {
                    proxy = (ISetupCompatService) queryLocalInterface;
                } else {
                    proxy = new ISetupCompatService.Stub.Proxy(iBinder);
                }
            }
            setupCompatServiceProvider.swapServiceContextAndNotify(new ServiceContext(state, proxy, 0));
        }

        @Override // android.content.ServiceConnection
        public final void onServiceDisconnected(ComponentName componentName) {
            SetupCompatServiceProvider.this.swapServiceContextAndNotify(new ServiceContext(State.DISCONNECTED));
        }
    };
    public volatile ServiceContext serviceContext = new ServiceContext(State.NOT_STARTED);
    public final AtomicReference connectedConditionRef = new AtomicReference();

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.google.android.setupcompat.internal.SetupCompatServiceProvider$2, reason: invalid class name */
    /* loaded from: classes2.dex */
    public abstract /* synthetic */ class AnonymousClass2 {
        public static final /* synthetic */ int[] $SwitchMap$com$google$android$setupcompat$internal$SetupCompatServiceProvider$State;

        static {
            int[] iArr = new int[State.values().length];
            $SwitchMap$com$google$android$setupcompat$internal$SetupCompatServiceProvider$State = iArr;
            try {
                iArr[State.CONNECTED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$google$android$setupcompat$internal$SetupCompatServiceProvider$State[State.SERVICE_NOT_USABLE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$google$android$setupcompat$internal$SetupCompatServiceProvider$State[State.BIND_FAILED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$google$android$setupcompat$internal$SetupCompatServiceProvider$State[State.DISCONNECTED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$google$android$setupcompat$internal$SetupCompatServiceProvider$State[State.BINDING.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$google$android$setupcompat$internal$SetupCompatServiceProvider$State[State.REBIND_REQUIRED.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$google$android$setupcompat$internal$SetupCompatServiceProvider$State[State.NOT_STARTED.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class ServiceContext {
        public final ISetupCompatService compatService;
        public final State state;

        public /* synthetic */ ServiceContext(State state, ISetupCompatService iSetupCompatService, int i) {
            this(state, iSetupCompatService);
        }

        private ServiceContext(State state, ISetupCompatService iSetupCompatService) {
            this.state = state;
            this.compatService = iSetupCompatService;
            if (state == State.CONNECTED && iSetupCompatService == null) {
                throw new NullPointerException("CompatService cannot be null when state is connected");
            }
        }

        public ServiceContext(State state) {
            this(state, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public enum State {
        NOT_STARTED,
        BIND_FAILED,
        BINDING,
        CONNECTED,
        DISCONNECTED,
        SERVICE_NOT_USABLE,
        REBIND_REQUIRED
    }

    public SetupCompatServiceProvider(Context context) {
        this.context = context.getApplicationContext();
    }

    public static SetupCompatServiceProvider getInstance(Context context) {
        if (context != null) {
            SetupCompatServiceProvider setupCompatServiceProvider = instance;
            if (setupCompatServiceProvider == null) {
                synchronized (SetupCompatServiceProvider.class) {
                    setupCompatServiceProvider = instance;
                    if (setupCompatServiceProvider == null) {
                        setupCompatServiceProvider = new SetupCompatServiceProvider(context.getApplicationContext());
                        instance = setupCompatServiceProvider;
                        instance.requestServiceBind();
                    }
                }
            }
            return setupCompatServiceProvider;
        }
        throw new NullPointerException("Context object cannot be null.");
    }

    public static void setInstanceForTesting(SetupCompatServiceProvider setupCompatServiceProvider) {
        instance = setupCompatServiceProvider;
    }

    public CountDownLatch createCountDownLatch() {
        return new CountDownLatch(1);
    }

    public State getCurrentState() {
        return this.serviceContext.state;
    }

    public ISetupCompatService getService(long j, TimeUnit timeUnit) {
        boolean z;
        ServiceContext serviceContext;
        if (!disableLooperCheckForTesting && Looper.getMainLooper() == Looper.myLooper()) {
            z = false;
        } else {
            z = true;
        }
        if (z) {
            synchronized (this) {
                serviceContext = this.serviceContext;
            }
            switch (AnonymousClass2.$SwitchMap$com$google$android$setupcompat$internal$SetupCompatServiceProvider$State[serviceContext.state.ordinal()]) {
                case 1:
                    return serviceContext.compatService;
                case 2:
                case 3:
                    return null;
                case 4:
                case 5:
                    return waitForConnection(j, timeUnit);
                case 6:
                    requestServiceBind();
                    return waitForConnection(j, timeUnit);
                case 7:
                    LOG.w("NOT_STARTED state only possible before instance is created.");
                    return null;
                default:
                    throw new IllegalStateException("Unknown state = " + serviceContext.state);
            }
        }
        throw new IllegalStateException("getService blocks and should not be called from the main thread.");
    }

    public final synchronized void requestServiceBind() {
        boolean z;
        synchronized (this) {
        }
        State state = this.serviceContext.state;
        if (state == State.CONNECTED) {
            LOG.atInfo("Refusing to rebind since current state is already connected");
            return;
        }
        if (state != State.NOT_STARTED) {
            LOG.atInfo("Unbinding existing service connection.");
            this.context.unbindService(this.serviceConnection);
        }
        try {
            z = this.context.bindService(COMPAT_SERVICE_INTENT, this.serviceConnection, 1);
        } catch (SecurityException e) {
            LOG.e("Unable to bind to compat service. " + e);
            z = false;
        }
        if (z) {
            if (getCurrentState() != State.CONNECTED) {
                swapServiceContextAndNotify(new ServiceContext(State.BINDING));
                LOG.atInfo("Context#bindService went through, now waiting for service connection");
            }
        } else {
            swapServiceContextAndNotify(new ServiceContext(State.BIND_FAILED));
            LOG.e("Context#bindService did not succeed.");
        }
    }

    public void swapServiceContextAndNotify(ServiceContext serviceContext) {
        LOG.atInfo(String.format("State changed: %s -> %s", this.serviceContext.state, serviceContext.state));
        this.serviceContext = serviceContext;
        CountDownLatch countDownLatch = (CountDownLatch) this.connectedConditionRef.getAndSet(null);
        if (countDownLatch != null) {
            countDownLatch.countDown();
        }
    }

    public final ISetupCompatService waitForConnection(long j, TimeUnit timeUnit) {
        ServiceContext serviceContext;
        AtomicReference atomicReference;
        CountDownLatch countDownLatch;
        ServiceContext serviceContext2;
        synchronized (this) {
            serviceContext = this.serviceContext;
        }
        if (serviceContext.state == State.CONNECTED) {
            return serviceContext.compatService;
        }
        do {
            atomicReference = this.connectedConditionRef;
            countDownLatch = (CountDownLatch) atomicReference.get();
            if (countDownLatch != null) {
                break;
            }
            countDownLatch = createCountDownLatch();
        } while (!atomicReference.compareAndSet(null, countDownLatch));
        Logger logger = LOG;
        logger.atInfo("Waiting for service to get connected");
        if (countDownLatch.await(j, timeUnit)) {
            synchronized (this) {
                serviceContext2 = this.serviceContext;
            }
            logger.atInfo(String.format("Finished waiting for service to get connected. Current state = %s", serviceContext2.state));
            return serviceContext2.compatService;
        }
        requestServiceBind();
        throw new TimeoutException(String.format("Failed to acquire connection after [%s %s]", Long.valueOf(j), timeUnit));
    }
}
