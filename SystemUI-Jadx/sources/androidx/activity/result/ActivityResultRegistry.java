package androidx.activity.result;

import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import androidx.activity.result.contract.ActivityResultContract;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.LifecycleOwner;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Random;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public abstract class ActivityResultRegistry {
    public Random mRandom = new Random();
    public final Map mRcToKey = new HashMap();
    public final Map mKeyToRc = new HashMap();
    public final Map mKeyToLifecycleContainers = new HashMap();
    public ArrayList mLaunchedKeys = new ArrayList();
    public final transient Map mKeyToCallback = new HashMap();
    public final Map mParsedPendingResults = new HashMap();
    public final Bundle mPendingResults = new Bundle();

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: androidx.activity.result.ActivityResultRegistry$1, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass1 implements LifecycleEventObserver {
        public final /* synthetic */ ActivityResultCallback val$callback;
        public final /* synthetic */ ActivityResultContract val$contract;
        public final /* synthetic */ String val$key;

        public AnonymousClass1(String str, ActivityResultCallback activityResultCallback, ActivityResultContract activityResultContract) {
            this.val$key = str;
            this.val$callback = activityResultCallback;
            this.val$contract = activityResultContract;
        }

        @Override // androidx.lifecycle.LifecycleEventObserver
        public final void onStateChanged(LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
            boolean equals = Lifecycle.Event.ON_START.equals(event);
            String str = this.val$key;
            ActivityResultRegistry activityResultRegistry = ActivityResultRegistry.this;
            if (equals) {
                Map map = activityResultRegistry.mKeyToCallback;
                ActivityResultCallback activityResultCallback = this.val$callback;
                ActivityResultContract activityResultContract = this.val$contract;
                ((HashMap) map).put(str, new CallbackAndContract(activityResultCallback, activityResultContract));
                Map map2 = activityResultRegistry.mParsedPendingResults;
                if (((HashMap) map2).containsKey(str)) {
                    Object obj = ((HashMap) map2).get(str);
                    ((HashMap) map2).remove(str);
                    activityResultCallback.onActivityResult(obj);
                }
                Bundle bundle = activityResultRegistry.mPendingResults;
                ActivityResult activityResult = (ActivityResult) bundle.getParcelable(str);
                if (activityResult != null) {
                    bundle.remove(str);
                    activityResultCallback.onActivityResult(activityResultContract.parseResult(activityResult.mResultCode, activityResult.mData));
                    return;
                }
                return;
            }
            if (Lifecycle.Event.ON_STOP.equals(event)) {
                ((HashMap) activityResultRegistry.mKeyToCallback).remove(str);
            } else if (Lifecycle.Event.ON_DESTROY.equals(event)) {
                activityResultRegistry.unregister(str);
            }
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: androidx.activity.result.ActivityResultRegistry$3, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass3 extends ActivityResultLauncher {
        public final /* synthetic */ String val$key;

        public AnonymousClass3(String str, ActivityResultContract activityResultContract) {
            this.val$key = str;
        }

        public final void unregister() {
            ActivityResultRegistry.this.unregister(this.val$key);
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class CallbackAndContract {
        public final ActivityResultCallback mCallback;
        public final ActivityResultContract mContract;

        public CallbackAndContract(ActivityResultCallback activityResultCallback, ActivityResultContract activityResultContract) {
            this.mCallback = activityResultCallback;
            this.mContract = activityResultContract;
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class LifecycleContainer {
        public final Lifecycle mLifecycle;
        public final ArrayList mObservers = new ArrayList();

        public LifecycleContainer(Lifecycle lifecycle) {
            this.mLifecycle = lifecycle;
        }
    }

    public final boolean dispatchResult(int i, int i2, Intent intent) {
        ActivityResultCallback activityResultCallback;
        String str = (String) ((HashMap) this.mRcToKey).get(Integer.valueOf(i));
        if (str == null) {
            return false;
        }
        CallbackAndContract callbackAndContract = (CallbackAndContract) ((HashMap) this.mKeyToCallback).get(str);
        if (callbackAndContract != null && (activityResultCallback = callbackAndContract.mCallback) != null && this.mLaunchedKeys.contains(str)) {
            activityResultCallback.onActivityResult(callbackAndContract.mContract.parseResult(i2, intent));
            this.mLaunchedKeys.remove(str);
            return true;
        }
        ((HashMap) this.mParsedPendingResults).remove(str);
        this.mPendingResults.putParcelable(str, new ActivityResult(i2, intent));
        return true;
    }

    public final AnonymousClass3 register(String str, ActivityResultContract activityResultContract, ActivityResultCallback activityResultCallback) {
        int i;
        Map map;
        Map map2 = this.mKeyToRc;
        if (((Integer) ((HashMap) map2).get(str)) == null) {
            int nextInt = this.mRandom.nextInt(2147418112);
            while (true) {
                i = nextInt + 65536;
                map = this.mRcToKey;
                if (!((HashMap) map).containsKey(Integer.valueOf(i))) {
                    break;
                }
                nextInt = this.mRandom.nextInt(2147418112);
            }
            ((HashMap) map).put(Integer.valueOf(i), str);
            ((HashMap) map2).put(str, Integer.valueOf(i));
        }
        ((HashMap) this.mKeyToCallback).put(str, new CallbackAndContract(activityResultCallback, activityResultContract));
        HashMap hashMap = (HashMap) this.mParsedPendingResults;
        if (hashMap.containsKey(str)) {
            Object obj = hashMap.get(str);
            hashMap.remove(str);
            activityResultCallback.onActivityResult(obj);
        }
        Bundle bundle = this.mPendingResults;
        ActivityResult activityResult = (ActivityResult) bundle.getParcelable(str);
        if (activityResult != null) {
            bundle.remove(str);
            activityResultCallback.onActivityResult(activityResultContract.parseResult(activityResult.mResultCode, activityResult.mData));
        }
        return new AnonymousClass3(str, activityResultContract);
    }

    public final void unregister(String str) {
        Integer num;
        if (!this.mLaunchedKeys.contains(str) && (num = (Integer) ((HashMap) this.mKeyToRc).remove(str)) != null) {
            ((HashMap) this.mRcToKey).remove(num);
        }
        ((HashMap) this.mKeyToCallback).remove(str);
        Map map = this.mParsedPendingResults;
        if (((HashMap) map).containsKey(str)) {
            StringBuilder m = ActivityResultRegistry$$ExternalSyntheticOutline0.m("Dropping pending result for request ", str, ": ");
            m.append(((HashMap) map).get(str));
            Log.w("ActivityResultRegistry", m.toString());
            ((HashMap) map).remove(str);
        }
        Bundle bundle = this.mPendingResults;
        if (bundle.containsKey(str)) {
            StringBuilder m2 = ActivityResultRegistry$$ExternalSyntheticOutline0.m("Dropping pending result for request ", str, ": ");
            m2.append(bundle.getParcelable(str));
            Log.w("ActivityResultRegistry", m2.toString());
            bundle.remove(str);
        }
        Map map2 = this.mKeyToLifecycleContainers;
        LifecycleContainer lifecycleContainer = (LifecycleContainer) ((HashMap) map2).get(str);
        if (lifecycleContainer != null) {
            ArrayList arrayList = lifecycleContainer.mObservers;
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                lifecycleContainer.mLifecycle.removeObserver((LifecycleEventObserver) it.next());
            }
            arrayList.clear();
            ((HashMap) map2).remove(str);
        }
    }
}
