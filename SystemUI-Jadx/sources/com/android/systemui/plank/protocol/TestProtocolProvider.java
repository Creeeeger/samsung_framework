package com.android.systemui.plank.protocol;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ProviderInfo;
import android.database.Cursor;
import android.hardware.input.InputManager;
import android.net.Uri;
import android.os.Bundle;
import android.os.HandlerThread;
import android.util.Log;
import android.view.Display;
import android.view.InputChannel;
import android.view.InputMonitor;
import androidx.concurrent.futures.AbstractResolvableFuture$$ExternalSyntheticOutline0;
import com.android.systemui.Dependency;
import com.android.systemui.SystemUIAppComponentFactoryBase;
import com.android.systemui.SystemUIInitializer;
import com.android.systemui.navigationbar.store.NavBarCommandDispatcher;
import com.android.systemui.navigationbar.store.NavBarStore;
import com.android.systemui.plank.ApiInfo;
import com.android.systemui.plank.ApiLogger;
import com.android.systemui.plank.command.GlobalActionCommandDispatcher;
import com.android.systemui.plank.command.PlankCommandDispatcher;
import com.android.systemui.plank.command.PlankDispatcherFactory;
import com.android.systemui.plank.dagger.PlankComponent;
import com.android.systemui.plank.monitor.TestInputHandler;
import com.android.systemui.plank.monitor.TestInputMonitor;
import com.android.systemui.plank.protocol.Protocol;
import com.android.systemui.plank.protocol.ProtocolManagerImpl;
import com.android.systemui.plank.utils.GsonWrapper;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.samsung.android.desktopsystemui.sharedlib.system.QuickStepContract;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class TestProtocolProvider extends ContentProvider implements SystemUIAppComponentFactoryBase.ContextInitializer {
    public SystemUIAppComponentFactoryBase.ContextAvailableCallback contextAvailableCallback;
    public SystemUIInitializer mInitializer;
    public PlankComponent plankComponent;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    static {
        new Companion(null);
    }

    @Override // android.content.ContentProvider
    public final void attachInfo(Context context, ProviderInfo providerInfo) {
        SystemUIAppComponentFactoryBase.ContextAvailableCallback contextAvailableCallback = this.contextAvailableCallback;
        SystemUIInitializer systemUIInitializer = null;
        if (contextAvailableCallback == null) {
            contextAvailableCallback = null;
        }
        if (context != null) {
            SystemUIInitializer onContextAvailable = contextAvailableCallback.onContextAvailable(context);
            this.mInitializer = onContextAvailable;
            if (onContextAvailable != null) {
                systemUIInitializer = onContextAvailable;
            }
            systemUIInitializer.getSysUIComponent().inject(this);
            super.attachInfo(context, providerInfo);
            return;
        }
        throw new IllegalStateException("Required value was null.".toString());
    }

    @Override // android.content.ContentProvider
    public final Bundle call(String str, String str2, Bundle bundle) {
        Optional empty;
        Optional empty2;
        Protocol.Command command;
        PlankDispatcherFactory.DispatcherType dispatcherType;
        Bundle bundle2;
        boolean z;
        Protocol.Command command2;
        String str3;
        Map map = null;
        if (this.plankComponent == null) {
            SystemUIAppComponentFactoryBase.ContextAvailableCallback contextAvailableCallback = this.contextAvailableCallback;
            if (contextAvailableCallback == null) {
                contextAvailableCallback = null;
            }
            Context context = getContext();
            if (context != null) {
                contextAvailableCallback.onContextAvailable(context);
                SystemUIInitializer systemUIInitializer = this.mInitializer;
                if (systemUIInitializer == null) {
                    systemUIInitializer = null;
                }
                systemUIInitializer.getSysUIComponent().inject(this);
            } else {
                throw new IllegalStateException("Required value was null.".toString());
            }
        }
        PlankComponent plankComponent = this.plankComponent;
        if (plankComponent == null) {
            plankComponent = null;
        }
        if (plankComponent.featureEnabled) {
            empty = Optional.of(plankComponent.lazyProtocolManager.get());
        } else {
            empty = Optional.empty();
        }
        if (empty.isPresent()) {
            PlankComponent plankComponent2 = this.plankComponent;
            if (plankComponent2 == null) {
                plankComponent2 = null;
            }
            if (plankComponent2.featureEnabled) {
                empty2 = Optional.of(plankComponent2.lazyProtocolManager.get());
            } else {
                empty2 = Optional.empty();
            }
            ProtocolManagerImpl protocolManagerImpl = (ProtocolManagerImpl) empty2.get();
            protocolManagerImpl.getClass();
            boolean z2 = true;
            if (Intrinsics.areEqual("__plank__", str2)) {
                Bundle bundle3 = new Bundle();
                protocolManagerImpl.protocol.getClass();
                try {
                    command2 = Protocol.Command.valueOf(str);
                } catch (IllegalArgumentException unused) {
                    command2 = Protocol.Command.none;
                }
                int i = ProtocolManagerImpl.WhenMappings.$EnumSwitchMapping$0[command2.ordinal()];
                if (i != 1) {
                    if (i != 2) {
                        bundle3.putBoolean("key_monitor_result", false);
                        return bundle3;
                    }
                    bundle3.putBoolean("key_monitor_result", true);
                    TestInputHandler testInputHandler = protocolManagerImpl.testInputMonitor.mInputHandler;
                    if (testInputHandler != null) {
                        StringBuilder sb = new StringBuilder();
                        new GsonWrapper();
                        GsonBuilder gsonBuilder = new GsonBuilder();
                        gsonBuilder.serializeNulls = true;
                        gsonBuilder.prettyPrinting = true;
                        Gson create = gsonBuilder.create();
                        List list = testInputHandler.mEventHistory;
                        if (list != null) {
                            synchronized (list) {
                                sb.append(create.toJson(testInputHandler.mEventHistory));
                            }
                        }
                        str3 = sb.toString();
                    } else {
                        str3 = "";
                    }
                    bundle3.putString("key_monitor_data", str3);
                    protocolManagerImpl.apiLogger.getClass();
                    new GsonWrapper();
                    GsonBuilder gsonBuilder2 = new GsonBuilder();
                    gsonBuilder2.serializeNulls = true;
                    gsonBuilder2.prettyPrinting = true;
                    bundle3.putString("key_logging_data", gsonBuilder2.create().toJson(ApiLogger.list));
                    TestInputMonitor testInputMonitor = protocolManagerImpl.testInputMonitor;
                    InputMonitor inputMonitor = testInputMonitor.mInputMonitor;
                    if (inputMonitor != null) {
                        inputMonitor.dispose();
                    }
                    testInputMonitor.mInputMonitor = null;
                    TestInputMonitor.TestInputEventReceiver testInputEventReceiver = testInputMonitor.mTestInputEventReceiver;
                    if (testInputEventReceiver != null) {
                        testInputEventReceiver.dispose();
                    }
                    testInputMonitor.mTestInputEventReceiver = null;
                    HandlerThread handlerThread = testInputMonitor.mHandlerThread;
                    if (handlerThread != null) {
                        handlerThread.quitSafely();
                    }
                    testInputMonitor.mHandlerThread = null;
                    TestInputHandler testInputHandler2 = testInputMonitor.mInputHandler;
                    if (testInputHandler2 != null) {
                        synchronized (testInputHandler2.mEventHistory) {
                            ((ArrayList) testInputHandler2.mEventHistory).clear();
                            Unit unit = Unit.INSTANCE;
                        }
                    }
                    testInputMonitor.mInputHandler = null;
                    Log.d(TestInputMonitor.tag, ":: stop ::");
                    return bundle3;
                }
                protocolManagerImpl.apiLogger.getClass();
                ((ArrayList) ApiLogger.list).clear();
                TestInputMonitor testInputMonitor2 = protocolManagerImpl.testInputMonitor;
                if (testInputMonitor2.mTestInputEventReceiver == null) {
                    StringBuilder sb2 = new StringBuilder();
                    String str4 = TestInputMonitor.tag;
                    HandlerThread handlerThread2 = new HandlerThread(AbstractResolvableFuture$$ExternalSyntheticOutline0.m(sb2, str4, ".Thread"));
                    testInputMonitor2.mHandlerThread = handlerThread2;
                    handlerThread2.start();
                    InputManager inputManager = InputManager.getInstance();
                    Context context2 = testInputMonitor2.mContext;
                    Display display = context2.getDisplay();
                    Intrinsics.checkNotNull(display);
                    testInputMonitor2.mInputMonitor = inputManager.monitorGestureInput(str4, display.getDisplayId());
                    testInputMonitor2.mInputHandler = new TestInputHandler(context2);
                    TestInputHandler testInputHandler3 = testInputMonitor2.mInputHandler;
                    Intrinsics.checkNotNull(testInputHandler3);
                    InputMonitor inputMonitor2 = testInputMonitor2.mInputMonitor;
                    Intrinsics.checkNotNull(inputMonitor2);
                    InputChannel inputChannel = inputMonitor2.getInputChannel();
                    HandlerThread handlerThread3 = testInputMonitor2.mHandlerThread;
                    Intrinsics.checkNotNull(handlerThread3);
                    testInputMonitor2.mTestInputEventReceiver = new TestInputMonitor.TestInputEventReceiver(testInputMonitor2, testInputHandler3, inputChannel, handlerThread3.getLooper());
                    Intent intent = new Intent("android.intent.action.MAIN");
                    intent.addCategory("android.intent.category.HOME");
                    intent.setFlags(QuickStepContract.SYSUI_STATE_NAV_BAR_VIS_GONE);
                    context2.startActivity(intent);
                    Log.d(str4, ":: start ::");
                }
                bundle3.putBoolean("key_monitor_result", true);
                return bundle3;
            }
            if (str2 != null) {
                protocolManagerImpl.protocol.getClass();
                try {
                    command = Protocol.Command.valueOf(str);
                } catch (IllegalArgumentException unused2) {
                    command = Protocol.Command.none;
                }
                if (ProtocolManagerImpl.WhenMappings.$EnumSwitchMapping$0[command.ordinal()] == 3) {
                    Bundle bundle4 = new Bundle();
                    long j = 0;
                    if (bundle != null) {
                        j = bundle.getLong("key_long_type", 0L);
                    }
                    protocolManagerImpl.apiLogger.getClass();
                    List list2 = ApiLogger.list;
                    if (!(list2 instanceof Collection) || !((ArrayList) list2).isEmpty()) {
                        Iterator it = ((ArrayList) list2).iterator();
                        while (it.hasNext()) {
                            ApiInfo apiInfo = (ApiInfo) it.next();
                            if (Intrinsics.areEqual(apiInfo.name, str2) && apiInfo.timestamp >= j) {
                                z = true;
                            } else {
                                z = false;
                            }
                            if (z) {
                                break;
                            }
                        }
                    }
                    z2 = false;
                    bundle4.putBoolean("key_boolean_type", z2);
                    return bundle4;
                }
                PlankDispatcherFactory plankDispatcherFactory = protocolManagerImpl.plankDispatcherFactory;
                plankDispatcherFactory.getClass();
                try {
                    dispatcherType = PlankDispatcherFactory.DispatcherType.valueOf(str2);
                } catch (IllegalArgumentException unused3) {
                    dispatcherType = PlankDispatcherFactory.DispatcherType.none;
                }
                if (plankDispatcherFactory.dependencies == null) {
                    LinkedHashMap linkedHashMap = new LinkedHashMap();
                    plankDispatcherFactory.dependencies = linkedHashMap;
                    linkedHashMap.put(PlankDispatcherFactory.DispatcherType.global_action, new GlobalActionCommandDispatcher());
                    Map map2 = plankDispatcherFactory.dependencies;
                    if (map2 == null) {
                        map2 = null;
                    }
                    map2.put(PlankDispatcherFactory.DispatcherType.navigation_bar, new NavBarCommandDispatcher((NavBarStore) Dependency.get(NavBarStore.class)));
                }
                Map map3 = plankDispatcherFactory.dependencies;
                if (map3 != null) {
                    map = map3;
                }
                PlankCommandDispatcher plankCommandDispatcher = (PlankCommandDispatcher) map.get(dispatcherType);
                if (plankCommandDispatcher == null || (bundle2 = plankCommandDispatcher.dispatch(str, bundle)) == null) {
                    bundle2 = new Bundle();
                }
                return bundle2;
            }
            Bundle bundle5 = new Bundle();
            bundle5.putBoolean("key_monitor_result", false);
            return bundle5;
        }
        throw new RuntimeException(str.concat(" doesn't support!!!"));
    }

    @Override // android.content.ContentProvider
    public final int delete(Uri uri, String str, String[] strArr) {
        return 0;
    }

    @Override // android.content.ContentProvider
    public final String getType(Uri uri) {
        return null;
    }

    @Override // android.content.ContentProvider
    public final Uri insert(Uri uri, ContentValues contentValues) {
        return null;
    }

    @Override // android.content.ContentProvider
    public final boolean onCreate() {
        return false;
    }

    @Override // android.content.ContentProvider
    public final Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        return null;
    }

    @Override // com.android.systemui.SystemUIAppComponentFactoryBase.ContextInitializer
    public final void setContextAvailableCallback(SystemUIAppComponentFactoryBase.ContextAvailableCallback contextAvailableCallback) {
        this.contextAvailableCallback = contextAvailableCallback;
    }

    @Override // android.content.ContentProvider
    public final int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        return 0;
    }
}
