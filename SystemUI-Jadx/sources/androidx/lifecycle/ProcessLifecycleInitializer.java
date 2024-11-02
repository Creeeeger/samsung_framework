package androidx.lifecycle;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleDispatcher;
import androidx.startup.AppInitializer;
import androidx.startup.Initializer;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class ProcessLifecycleInitializer implements Initializer {
    @Override // androidx.startup.Initializer
    public final Object create(Context context) {
        if (((HashSet) AppInitializer.getInstance(context).mDiscovered).contains(ProcessLifecycleInitializer.class)) {
            if (!LifecycleDispatcher.sInitialized.getAndSet(true)) {
                ((Application) context.getApplicationContext()).registerActivityLifecycleCallbacks(new LifecycleDispatcher.DispatcherActivityCallback());
            }
            ProcessLifecycleOwner processLifecycleOwner = ProcessLifecycleOwner.sInstance;
            processLifecycleOwner.getClass();
            processLifecycleOwner.mHandler = new Handler();
            processLifecycleOwner.mRegistry.handleLifecycleEvent(Lifecycle.Event.ON_CREATE);
            ((Application) context.getApplicationContext()).registerActivityLifecycleCallbacks(new EmptyActivityLifecycleCallbacks() { // from class: androidx.lifecycle.ProcessLifecycleOwner.3

                /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
                /* renamed from: androidx.lifecycle.ProcessLifecycleOwner$3$1 */
                /* loaded from: classes.dex */
                public final class AnonymousClass1 extends EmptyActivityLifecycleCallbacks {
                    public AnonymousClass1() {
                    }

                    @Override // android.app.Application.ActivityLifecycleCallbacks
                    public void onActivityPostResumed(Activity activity) {
                        ProcessLifecycleOwner.this.activityResumed();
                    }

                    @Override // android.app.Application.ActivityLifecycleCallbacks
                    public void onActivityPostStarted(Activity activity) {
                        ProcessLifecycleOwner processLifecycleOwner = ProcessLifecycleOwner.this;
                        int i = processLifecycleOwner.mStartedCounter + 1;
                        processLifecycleOwner.mStartedCounter = i;
                        if (i == 1 && processLifecycleOwner.mStopSent) {
                            processLifecycleOwner.mRegistry.handleLifecycleEvent(Lifecycle.Event.ON_START);
                            processLifecycleOwner.mStopSent = false;
                        }
                    }
                }

                public AnonymousClass3() {
                }

                @Override // androidx.lifecycle.EmptyActivityLifecycleCallbacks, android.app.Application.ActivityLifecycleCallbacks
                public void onActivityPaused(Activity activity) {
                    ProcessLifecycleOwner processLifecycleOwner2 = ProcessLifecycleOwner.this;
                    int i = processLifecycleOwner2.mResumedCounter - 1;
                    processLifecycleOwner2.mResumedCounter = i;
                    if (i == 0) {
                        processLifecycleOwner2.mHandler.postDelayed(processLifecycleOwner2.mDelayedPauseRunnable, 700L);
                    }
                }

                @Override // android.app.Application.ActivityLifecycleCallbacks
                public void onActivityPreCreated(Activity activity, Bundle bundle) {
                    activity.registerActivityLifecycleCallbacks(new EmptyActivityLifecycleCallbacks() { // from class: androidx.lifecycle.ProcessLifecycleOwner.3.1
                        public AnonymousClass1() {
                        }

                        @Override // android.app.Application.ActivityLifecycleCallbacks
                        public void onActivityPostResumed(Activity activity2) {
                            ProcessLifecycleOwner.this.activityResumed();
                        }

                        @Override // android.app.Application.ActivityLifecycleCallbacks
                        public void onActivityPostStarted(Activity activity2) {
                            ProcessLifecycleOwner processLifecycleOwner2 = ProcessLifecycleOwner.this;
                            int i = processLifecycleOwner2.mStartedCounter + 1;
                            processLifecycleOwner2.mStartedCounter = i;
                            if (i == 1 && processLifecycleOwner2.mStopSent) {
                                processLifecycleOwner2.mRegistry.handleLifecycleEvent(Lifecycle.Event.ON_START);
                                processLifecycleOwner2.mStopSent = false;
                            }
                        }
                    });
                }

                @Override // androidx.lifecycle.EmptyActivityLifecycleCallbacks, android.app.Application.ActivityLifecycleCallbacks
                public void onActivityStopped(Activity activity) {
                    ProcessLifecycleOwner processLifecycleOwner2 = ProcessLifecycleOwner.this;
                    int i = processLifecycleOwner2.mStartedCounter - 1;
                    processLifecycleOwner2.mStartedCounter = i;
                    if (i == 0 && processLifecycleOwner2.mPauseSent) {
                        processLifecycleOwner2.mRegistry.handleLifecycleEvent(Lifecycle.Event.ON_STOP);
                        processLifecycleOwner2.mStopSent = true;
                    }
                }

                @Override // androidx.lifecycle.EmptyActivityLifecycleCallbacks, android.app.Application.ActivityLifecycleCallbacks
                public void onActivityCreated(Activity activity, Bundle bundle) {
                }
            });
            return processLifecycleOwner;
        }
        throw new IllegalStateException("ProcessLifecycleInitializer cannot be initialized lazily. \nPlease ensure that you have: \n<meta-data\n    android:name='androidx.lifecycle.ProcessLifecycleInitializer' \n    android:value='androidx.startup' /> \nunder InitializationProvider in your AndroidManifest.xml");
    }

    @Override // androidx.startup.Initializer
    public final List dependencies() {
        return Collections.emptyList();
    }
}
