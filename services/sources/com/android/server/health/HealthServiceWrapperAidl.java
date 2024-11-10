package com.android.server.health;

import android.hardware.health.HealthInfo;
import android.hardware.health.IHealth;
import android.os.BatteryProperty;
import android.os.Binder;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.IServiceCallback;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.os.ServiceSpecificException;
import android.os.Trace;
import android.util.Slog;
import com.android.server.health.HealthServiceWrapperAidl;
import java.util.NoSuchElementException;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicReference;
import vendor.samsung.hardware.health.ISehHealth;

/* loaded from: classes2.dex */
public class HealthServiceWrapperAidl extends HealthServiceWrapper {
    static final String SERVICE_NAME = IHealth.DESCRIPTOR + "/default";
    public final HandlerThread mHandlerThread = new HandlerThread("HealthServiceBinder");
    public final AtomicReference mLastSehService;
    public final AtomicReference mLastService;
    public final HealthRegCallbackAidl mRegCallback;
    public final IServiceCallback mServiceCallback;

    /* loaded from: classes2.dex */
    public interface ServiceManagerStub {
        default IHealth waitForDeclaredService(String str) {
            return IHealth.Stub.asInterface(ServiceManager.waitForDeclaredService(str));
        }

        default void registerForNotifications(String str, IServiceCallback iServiceCallback) {
            ServiceManager.registerForNotifications(str, iServiceCallback);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x007c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public HealthServiceWrapperAidl(com.android.server.health.HealthRegCallbackAidl r8, com.android.server.health.HealthServiceWrapperAidl.ServiceManagerStub r9) {
        /*
            r7 = this;
            java.lang.String r0 = "HealthServiceWrapperAidl"
            r7.<init>()
            android.os.HandlerThread r1 = new android.os.HandlerThread
            java.lang.String r2 = "HealthServiceBinder"
            r1.<init>(r2)
            r7.mHandlerThread = r1
            java.util.concurrent.atomic.AtomicReference r1 = new java.util.concurrent.atomic.AtomicReference
            r1.<init>()
            r7.mLastService = r1
            com.android.server.health.HealthServiceWrapperAidl$ServiceCallback r2 = new com.android.server.health.HealthServiceWrapperAidl$ServiceCallback
            r3 = 0
            r2.<init>()
            r7.mServiceCallback = r2
            java.util.concurrent.atomic.AtomicReference r2 = new java.util.concurrent.atomic.AtomicReference
            r2.<init>()
            r7.mLastSehService = r2
            java.lang.String r2 = "HealthInitGetServiceAidl"
            traceBegin(r2)
            java.lang.String r2 = com.android.server.health.HealthServiceWrapperAidl.SERVICE_NAME     // Catch: java.lang.Throwable -> La6
            android.hardware.health.IHealth r4 = r9.waitForDeclaredService(r2)     // Catch: java.lang.Throwable -> La6
            java.lang.StringBuilder r5 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> La6
            r5.<init>()     // Catch: java.lang.Throwable -> La6
            java.lang.String r6 = "HealthServiceWrapperAidl: newService: "
            r5.append(r6)     // Catch: java.lang.Throwable -> La6
            r5.append(r4)     // Catch: java.lang.Throwable -> La6
            java.lang.String r5 = r5.toString()     // Catch: java.lang.Throwable -> La6
            android.util.Slog.d(r0, r5)     // Catch: java.lang.Throwable -> La6
            traceEnd()
            if (r4 == 0) goto L9e
            r1.set(r4)
            android.os.IBinder r1 = android.os.ServiceManager.waitForDeclaredService(r2)
            android.os.IBinder r1 = android.os.Binder.allowBlocking(r1)
            if (r1 == 0) goto L72
            android.os.IBinder r1 = r1.getExtension()     // Catch: android.os.RemoteException -> L5e
            vendor.samsung.hardware.health.ISehHealth r1 = vendor.samsung.hardware.health.ISehHealth.Stub.asInterface(r1)     // Catch: android.os.RemoteException -> L5e
            goto L73
        L5e:
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "Unable to register DeathRecipient for "
            r1.append(r2)
            r1.append(r3)
            java.lang.String r1 = r1.toString()
            android.util.Slog.e(r0, r1)
        L72:
            r1 = r3
        L73:
            java.util.concurrent.atomic.AtomicReference r2 = r7.mLastSehService
            r2.set(r1)
            r7.mRegCallback = r8
            if (r8 == 0) goto L7f
            r8.onRegistration(r3, r1)
        L7f:
            java.lang.String r8 = "HealthInitRegisterNotificationAidl"
            traceBegin(r8)
            android.os.HandlerThread r8 = r7.mHandlerThread
            r8.start()
            java.lang.String r8 = com.android.server.health.HealthServiceWrapperAidl.SERVICE_NAME     // Catch: java.lang.Throwable -> L99
            android.os.IServiceCallback r7 = r7.mServiceCallback     // Catch: java.lang.Throwable -> L99
            r9.registerForNotifications(r8, r7)     // Catch: java.lang.Throwable -> L99
            traceEnd()
            java.lang.String r7 = "health: HealthServiceWrapper listening to AIDL HAL"
            android.util.Slog.i(r0, r7)
            return
        L99:
            r7 = move-exception
            traceEnd()
            throw r7
        L9e:
            java.util.NoSuchElementException r7 = new java.util.NoSuchElementException
            java.lang.String r8 = "IHealth service instance isn't available. Perhaps no permission?"
            r7.<init>(r8)
            throw r7
        La6:
            r7 = move-exception
            traceEnd()
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.health.HealthServiceWrapperAidl.<init>(com.android.server.health.HealthRegCallbackAidl, com.android.server.health.HealthServiceWrapperAidl$ServiceManagerStub):void");
    }

    @Override // com.android.server.health.HealthServiceWrapper
    public HandlerThread getHandlerThread() {
        return this.mHandlerThread;
    }

    @Override // com.android.server.health.HealthServiceWrapper
    public int getProperty(int i, BatteryProperty batteryProperty) {
        traceBegin("HealthGetPropertyAidl");
        try {
            return getPropertyInternal(i, batteryProperty);
        } finally {
            traceEnd();
        }
    }

    public final int getPropertyInternal(int i, BatteryProperty batteryProperty) {
        IHealth iHealth = (IHealth) this.mLastService.get();
        if (iHealth == null) {
            throw new RemoteException("no health service");
        }
        try {
            switch (i) {
                case 1:
                    batteryProperty.setLong(iHealth.getChargeCounterUah());
                    break;
                case 2:
                    batteryProperty.setLong(iHealth.getCurrentNowMicroamps());
                    break;
                case 3:
                    batteryProperty.setLong(iHealth.getCurrentAverageMicroamps());
                    break;
                case 4:
                    batteryProperty.setLong(iHealth.getCapacity());
                    break;
                case 5:
                    batteryProperty.setLong(iHealth.getEnergyCounterNwh());
                    break;
                case 6:
                    batteryProperty.setLong(iHealth.getChargeStatus());
                    break;
                case 7:
                    batteryProperty.setLong(iHealth.getBatteryHealthData().batteryManufacturingDateSeconds);
                    break;
                case 8:
                    batteryProperty.setLong(iHealth.getBatteryHealthData().batteryFirstUsageSeconds);
                    break;
                case 9:
                    batteryProperty.setLong(iHealth.getChargingPolicy());
                    break;
                case 10:
                    batteryProperty.setLong(iHealth.getBatteryHealthData().batteryStateOfHealth);
                    break;
                default:
                    return 0;
            }
            return 0;
        } catch (UnsupportedOperationException unused) {
            return -1;
        } catch (ServiceSpecificException unused2) {
            return -2;
        }
    }

    @Override // com.android.server.health.HealthServiceWrapper
    public void scheduleUpdate() {
        getHandlerThread().getThreadHandler().post(new Runnable() { // from class: com.android.server.health.HealthServiceWrapperAidl$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                HealthServiceWrapperAidl.this.lambda$scheduleUpdate$0();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$scheduleUpdate$0() {
        IHealth iHealth;
        traceBegin("HealthScheduleUpdate");
        try {
            try {
                iHealth = (IHealth) this.mLastService.get();
            } catch (RemoteException | ServiceSpecificException e) {
                Slog.e("HealthServiceWrapperAidl", "Cannot call update on health AIDL HAL", e);
            }
            if (iHealth == null) {
                Slog.e("HealthServiceWrapperAidl", "no health service");
            } else {
                iHealth.update();
            }
        } finally {
            traceEnd();
        }
    }

    @Override // com.android.server.health.HealthServiceWrapper
    public HealthInfo getHealthInfo() {
        IHealth iHealth = (IHealth) this.mLastService.get();
        if (iHealth == null) {
            return null;
        }
        try {
            return iHealth.getHealthInfo();
        } catch (UnsupportedOperationException | ServiceSpecificException unused) {
            return null;
        }
    }

    @Override // com.android.server.health.HealthServiceWrapper
    public void sehWriteEnableToParam(int i, boolean z, String str) {
        try {
            ISehHealth iSehHealth = (ISehHealth) this.mLastSehService.get();
            if (iSehHealth == null) {
                throw new RemoteException("no seh health service");
            }
            iSehHealth.sehWriteEnableToParam(i, z);
            Slog.d("HealthServiceWrapperAidl", "sehWriteEnableToParam[" + str + "]: , offset: " + i + ", enable: " + z);
        } catch (Exception e) {
            Slog.e("HealthServiceWrapperAidl", "Exception in sehWriteEnableToParam[" + str + "]: , offset: " + i + ", enable: " + z);
            e.printStackTrace();
        }
    }

    public static void traceBegin(String str) {
        Trace.traceBegin(524288L, str);
    }

    public static void traceEnd() {
        Trace.traceEnd(524288L);
    }

    /* loaded from: classes2.dex */
    public class ServiceCallback extends IServiceCallback.Stub {
        public ServiceCallback() {
        }

        public void onRegistration(String str, final IBinder iBinder) {
            if (HealthServiceWrapperAidl.SERVICE_NAME.equals(str)) {
                HealthServiceWrapperAidl.this.getHandlerThread().getThreadHandler().post(new Runnable() { // from class: com.android.server.health.HealthServiceWrapperAidl$ServiceCallback$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        HealthServiceWrapperAidl.ServiceCallback.this.lambda$onRegistration$0(iBinder);
                    }
                });
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onRegistration$0(IBinder iBinder) {
            IHealth iHealth = (IHealth) HealthServiceWrapperAidl.this.mLastService.getAndSet(IHealth.Stub.asInterface(Binder.allowBlocking(iBinder)));
            ISehHealth iSehHealth = null;
            if (Objects.equals(iBinder, iHealth != null ? iHealth.asBinder() : null)) {
                return;
            }
            try {
                iSehHealth = ISehHealth.Stub.asInterface(Binder.allowBlocking(iBinder).getExtension());
            } catch (Exception e) {
                Slog.e("HealthServiceWrapperAidl", "Unable to getExtension for health ", e);
            }
            if (iSehHealth == null) {
                Slog.e("HealthServiceWrapperAidl", "HealthServiceWrapperAidl: ServiceCallback: newSehService: " + iSehHealth);
                throw new NoSuchElementException("ServiceCallback: ISehHealth service instance isn't available. Perhaps no permission?");
            }
            ISehHealth iSehHealth2 = (ISehHealth) HealthServiceWrapperAidl.this.mLastSehService.getAndSet(iSehHealth);
            Slog.i("HealthServiceWrapperAidl", "New health AIDL HAL service registered");
            if (HealthServiceWrapperAidl.this.mRegCallback != null) {
                HealthServiceWrapperAidl.this.mRegCallback.onRegistration(iSehHealth2, iSehHealth);
            }
        }
    }
}
