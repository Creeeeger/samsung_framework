package androidx.fragment.app;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.os.Looper;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import androidx.activity.Cancellable;
import androidx.activity.OnBackPressedCallback;
import androidx.activity.OnBackPressedDispatcher;
import androidx.activity.OnBackPressedDispatcherOwner;
import androidx.activity.result.ActivityResult;
import androidx.activity.result.ActivityResultCallback;
import androidx.activity.result.ActivityResultRegistry;
import androidx.activity.result.ActivityResultRegistryOwner;
import androidx.activity.result.contract.ActivityResultContract;
import androidx.concurrent.futures.AbstractResolvableFuture$$ExternalSyntheticOutline0;
import androidx.constraintlayout.motion.widget.KeyAttributes$$ExternalSyntheticOutline0;
import androidx.constraintlayout.motion.widget.MotionLayout$$ExternalSyntheticOutline0;
import androidx.core.app.MultiWindowModeChangedInfo;
import androidx.core.app.OnMultiWindowModeChangedProvider;
import androidx.core.app.OnPictureInPictureModeChangedProvider;
import androidx.core.app.PictureInPictureModeChangedInfo;
import androidx.core.content.OnConfigurationChangedProvider;
import androidx.core.content.OnTrimMemoryProvider;
import androidx.core.graphics.PathParser$$ExternalSyntheticOutline0;
import androidx.core.util.Consumer;
import androidx.core.view.MenuHost;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentTransaction;
import androidx.fragment.app.strictmode.FragmentStrictMode;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.loader.app.LoaderManagerImpl;
import androidx.savedstate.SavedStateRegistry;
import androidx.savedstate.SavedStateRegistryOwner;
import com.android.systemui.R;
import com.samsung.android.knox.ex.peripheral.PeripheralConstants;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public abstract class FragmentManager {
    public ArrayList mBackStack;
    public FragmentContainer mContainer;
    public ArrayList mCreatedMenus;
    public int mCurState;
    public final AnonymousClass4 mDefaultSpecialEffectsControllerFactory;
    public boolean mDestroyed;
    public final AnonymousClass5 mExecCommit;
    public boolean mExecutingActions;
    public FragmentFactory mFragmentFactory;
    public boolean mHavePendingDeferredStart;
    public FragmentHostCallback mHost;
    public final AnonymousClass3 mHostFragmentFactory;
    public ArrayDeque mLaunchedFragments;
    public final AnonymousClass2 mMenuProvider;
    public boolean mNeedMenuInvalidate;
    public FragmentManagerViewModel mNonConfig;
    public OnBackPressedDispatcher mOnBackPressedDispatcher;
    public final FragmentManager$$ExternalSyntheticLambda0 mOnConfigurationChangedListener;
    public final FragmentManager$$ExternalSyntheticLambda0 mOnMultiWindowModeChangedListener;
    public final FragmentManager$$ExternalSyntheticLambda0 mOnPictureInPictureModeChangedListener;
    public final FragmentManager$$ExternalSyntheticLambda0 mOnTrimMemoryListener;
    public Fragment mParent;
    public Fragment mPrimaryNav;
    public ActivityResultRegistry.AnonymousClass3 mRequestPermissions;
    public ActivityResultRegistry.AnonymousClass3 mStartActivityForResult;
    public ActivityResultRegistry.AnonymousClass3 mStartIntentSenderForResult;
    public boolean mStateSaved;
    public boolean mStopped;
    public ArrayList mTmpAddedFragments;
    public ArrayList mTmpIsPop;
    public ArrayList mTmpRecords;
    public final ArrayList mPendingActions = new ArrayList();
    public final FragmentStore mFragmentStore = new FragmentStore();
    public final FragmentLayoutInflaterFactory mLayoutInflaterFactory = new FragmentLayoutInflaterFactory(this);
    public final AnonymousClass1 mOnBackPressedCallback = new OnBackPressedCallback(false) { // from class: androidx.fragment.app.FragmentManager.1
        @Override // androidx.activity.OnBackPressedCallback
        public final void handleOnBackPressed() {
            FragmentManager fragmentManager = FragmentManager.this;
            fragmentManager.execPendingActions(true);
            if (fragmentManager.mOnBackPressedCallback.isEnabled) {
                fragmentManager.popBackStackImmediate();
            } else {
                fragmentManager.mOnBackPressedDispatcher.onBackPressed();
            }
        }
    };
    public final AtomicInteger mBackStackIndex = new AtomicInteger();
    public final Map mBackStackStates = Collections.synchronizedMap(new HashMap());
    public final Map mResults = Collections.synchronizedMap(new HashMap());
    public final Map mResultListeners = Collections.synchronizedMap(new HashMap());
    public final FragmentLifecycleCallbacksDispatcher mLifecycleCallbacksDispatcher = new FragmentLifecycleCallbacksDispatcher(this);
    public final CopyOnWriteArrayList mOnAttachListeners = new CopyOnWriteArrayList();

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: androidx.fragment.app.FragmentManager$2, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass2 {
        public AnonymousClass2() {
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: androidx.fragment.app.FragmentManager$6, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass6 implements LifecycleEventObserver {
        public final /* synthetic */ Lifecycle val$lifecycle;
        public final /* synthetic */ String val$requestKey;

        public AnonymousClass6(String str, FragmentResultListener fragmentResultListener, Lifecycle lifecycle) {
            this.val$requestKey = str;
            this.val$lifecycle = lifecycle;
        }

        @Override // androidx.lifecycle.LifecycleEventObserver
        public final void onStateChanged(LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
            Lifecycle.Event event2 = Lifecycle.Event.ON_START;
            String str = this.val$requestKey;
            FragmentManager fragmentManager = FragmentManager.this;
            if (event == event2 && ((Bundle) fragmentManager.mResults.get(str)) != null) {
                throw null;
            }
            if (event == Lifecycle.Event.ON_DESTROY) {
                this.val$lifecycle.removeObserver(this);
                fragmentManager.mResultListeners.remove(str);
            }
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class FragmentIntentSenderContract extends ActivityResultContract {
        @Override // androidx.activity.result.contract.ActivityResultContract
        public final Object parseResult(int i, Intent intent) {
            return new ActivityResult(i, intent);
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public interface OpGenerator {
        boolean generateOps(ArrayList arrayList, ArrayList arrayList2);
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class PopBackStackState implements OpGenerator {
        public final int mFlags;
        public final int mId;
        public final String mName;

        public PopBackStackState(String str, int i, int i2) {
            this.mName = str;
            this.mId = i;
            this.mFlags = i2;
        }

        @Override // androidx.fragment.app.FragmentManager.OpGenerator
        public final boolean generateOps(ArrayList arrayList, ArrayList arrayList2) {
            Fragment fragment = FragmentManager.this.mPrimaryNav;
            if (fragment != null && this.mId < 0 && this.mName == null && fragment.getChildFragmentManager().popBackStackImmediate()) {
                return false;
            }
            return FragmentManager.this.popBackStackState(arrayList, arrayList2, this.mName, this.mId, this.mFlags);
        }
    }

    /* JADX WARN: Type inference failed for: r0v13, types: [androidx.fragment.app.FragmentManager$$ExternalSyntheticLambda0] */
    /* JADX WARN: Type inference failed for: r0v14, types: [androidx.fragment.app.FragmentManager$$ExternalSyntheticLambda0] */
    /* JADX WARN: Type inference failed for: r0v15, types: [androidx.fragment.app.FragmentManager$$ExternalSyntheticLambda0] */
    /* JADX WARN: Type inference failed for: r0v16, types: [androidx.fragment.app.FragmentManager$$ExternalSyntheticLambda0] */
    /* JADX WARN: Type inference failed for: r0v20, types: [androidx.fragment.app.FragmentManager$3] */
    /* JADX WARN: Type inference failed for: r0v21, types: [androidx.fragment.app.FragmentManager$4] */
    /* JADX WARN: Type inference failed for: r0v23, types: [androidx.fragment.app.FragmentManager$5] */
    /* JADX WARN: Type inference failed for: r0v3, types: [androidx.fragment.app.FragmentManager$1] */
    public FragmentManager() {
        final byte b = 0 == true ? 1 : 0;
        this.mOnConfigurationChangedListener = new Consumer(this) { // from class: androidx.fragment.app.FragmentManager$$ExternalSyntheticLambda0
            public final /* synthetic */ FragmentManager f$0;

            {
                this.f$0 = this;
            }

            @Override // androidx.core.util.Consumer
            public final void accept(Object obj) {
                int i = b;
                FragmentManager fragmentManager = this.f$0;
                switch (i) {
                    case 0:
                        Configuration configuration = (Configuration) obj;
                        if (fragmentManager.isParentAdded()) {
                            fragmentManager.dispatchConfigurationChanged(false, configuration);
                            return;
                        }
                        return;
                    case 1:
                        Integer num = (Integer) obj;
                        if (fragmentManager.isParentAdded() && num.intValue() == 80) {
                            fragmentManager.dispatchLowMemory(false);
                            return;
                        }
                        return;
                    case 2:
                        MultiWindowModeChangedInfo multiWindowModeChangedInfo = (MultiWindowModeChangedInfo) obj;
                        if (fragmentManager.isParentAdded()) {
                            fragmentManager.dispatchMultiWindowModeChanged(multiWindowModeChangedInfo.mIsInMultiWindowMode, false);
                            return;
                        }
                        return;
                    default:
                        PictureInPictureModeChangedInfo pictureInPictureModeChangedInfo = (PictureInPictureModeChangedInfo) obj;
                        if (fragmentManager.isParentAdded()) {
                            fragmentManager.dispatchPictureInPictureModeChanged(pictureInPictureModeChangedInfo.mIsInPictureInPictureMode, false);
                            return;
                        }
                        return;
                }
            }
        };
        final int i = 1;
        this.mOnTrimMemoryListener = new Consumer(this) { // from class: androidx.fragment.app.FragmentManager$$ExternalSyntheticLambda0
            public final /* synthetic */ FragmentManager f$0;

            {
                this.f$0 = this;
            }

            @Override // androidx.core.util.Consumer
            public final void accept(Object obj) {
                int i2 = i;
                FragmentManager fragmentManager = this.f$0;
                switch (i2) {
                    case 0:
                        Configuration configuration = (Configuration) obj;
                        if (fragmentManager.isParentAdded()) {
                            fragmentManager.dispatchConfigurationChanged(false, configuration);
                            return;
                        }
                        return;
                    case 1:
                        Integer num = (Integer) obj;
                        if (fragmentManager.isParentAdded() && num.intValue() == 80) {
                            fragmentManager.dispatchLowMemory(false);
                            return;
                        }
                        return;
                    case 2:
                        MultiWindowModeChangedInfo multiWindowModeChangedInfo = (MultiWindowModeChangedInfo) obj;
                        if (fragmentManager.isParentAdded()) {
                            fragmentManager.dispatchMultiWindowModeChanged(multiWindowModeChangedInfo.mIsInMultiWindowMode, false);
                            return;
                        }
                        return;
                    default:
                        PictureInPictureModeChangedInfo pictureInPictureModeChangedInfo = (PictureInPictureModeChangedInfo) obj;
                        if (fragmentManager.isParentAdded()) {
                            fragmentManager.dispatchPictureInPictureModeChanged(pictureInPictureModeChangedInfo.mIsInPictureInPictureMode, false);
                            return;
                        }
                        return;
                }
            }
        };
        final int i2 = 2;
        this.mOnMultiWindowModeChangedListener = new Consumer(this) { // from class: androidx.fragment.app.FragmentManager$$ExternalSyntheticLambda0
            public final /* synthetic */ FragmentManager f$0;

            {
                this.f$0 = this;
            }

            @Override // androidx.core.util.Consumer
            public final void accept(Object obj) {
                int i22 = i2;
                FragmentManager fragmentManager = this.f$0;
                switch (i22) {
                    case 0:
                        Configuration configuration = (Configuration) obj;
                        if (fragmentManager.isParentAdded()) {
                            fragmentManager.dispatchConfigurationChanged(false, configuration);
                            return;
                        }
                        return;
                    case 1:
                        Integer num = (Integer) obj;
                        if (fragmentManager.isParentAdded() && num.intValue() == 80) {
                            fragmentManager.dispatchLowMemory(false);
                            return;
                        }
                        return;
                    case 2:
                        MultiWindowModeChangedInfo multiWindowModeChangedInfo = (MultiWindowModeChangedInfo) obj;
                        if (fragmentManager.isParentAdded()) {
                            fragmentManager.dispatchMultiWindowModeChanged(multiWindowModeChangedInfo.mIsInMultiWindowMode, false);
                            return;
                        }
                        return;
                    default:
                        PictureInPictureModeChangedInfo pictureInPictureModeChangedInfo = (PictureInPictureModeChangedInfo) obj;
                        if (fragmentManager.isParentAdded()) {
                            fragmentManager.dispatchPictureInPictureModeChanged(pictureInPictureModeChangedInfo.mIsInPictureInPictureMode, false);
                            return;
                        }
                        return;
                }
            }
        };
        final int i3 = 3;
        this.mOnPictureInPictureModeChangedListener = new Consumer(this) { // from class: androidx.fragment.app.FragmentManager$$ExternalSyntheticLambda0
            public final /* synthetic */ FragmentManager f$0;

            {
                this.f$0 = this;
            }

            @Override // androidx.core.util.Consumer
            public final void accept(Object obj) {
                int i22 = i3;
                FragmentManager fragmentManager = this.f$0;
                switch (i22) {
                    case 0:
                        Configuration configuration = (Configuration) obj;
                        if (fragmentManager.isParentAdded()) {
                            fragmentManager.dispatchConfigurationChanged(false, configuration);
                            return;
                        }
                        return;
                    case 1:
                        Integer num = (Integer) obj;
                        if (fragmentManager.isParentAdded() && num.intValue() == 80) {
                            fragmentManager.dispatchLowMemory(false);
                            return;
                        }
                        return;
                    case 2:
                        MultiWindowModeChangedInfo multiWindowModeChangedInfo = (MultiWindowModeChangedInfo) obj;
                        if (fragmentManager.isParentAdded()) {
                            fragmentManager.dispatchMultiWindowModeChanged(multiWindowModeChangedInfo.mIsInMultiWindowMode, false);
                            return;
                        }
                        return;
                    default:
                        PictureInPictureModeChangedInfo pictureInPictureModeChangedInfo = (PictureInPictureModeChangedInfo) obj;
                        if (fragmentManager.isParentAdded()) {
                            fragmentManager.dispatchPictureInPictureModeChanged(pictureInPictureModeChangedInfo.mIsInPictureInPictureMode, false);
                            return;
                        }
                        return;
                }
            }
        };
        this.mMenuProvider = new AnonymousClass2();
        this.mCurState = -1;
        this.mFragmentFactory = null;
        this.mHostFragmentFactory = new FragmentFactory() { // from class: androidx.fragment.app.FragmentManager.3
            @Override // androidx.fragment.app.FragmentFactory
            public final Fragment instantiate(ClassLoader classLoader, String str) {
                FragmentHostCallback fragmentHostCallback = FragmentManager.this.mHost;
                Context context = fragmentHostCallback.mContext;
                fragmentHostCallback.getClass();
                Object obj = Fragment.USE_DEFAULT_TRANSITION;
                try {
                    return (Fragment) FragmentFactory.loadFragmentClass(context.getClassLoader(), str).getConstructor(new Class[0]).newInstance(new Object[0]);
                } catch (IllegalAccessException e) {
                    throw new Fragment.InstantiationException(PathParser$$ExternalSyntheticOutline0.m("Unable to instantiate fragment ", str, ": make sure class name exists, is public, and has an empty constructor that is public"), e);
                } catch (InstantiationException e2) {
                    throw new Fragment.InstantiationException(PathParser$$ExternalSyntheticOutline0.m("Unable to instantiate fragment ", str, ": make sure class name exists, is public, and has an empty constructor that is public"), e2);
                } catch (NoSuchMethodException e3) {
                    throw new Fragment.InstantiationException(PathParser$$ExternalSyntheticOutline0.m("Unable to instantiate fragment ", str, ": could not find Fragment constructor"), e3);
                } catch (InvocationTargetException e4) {
                    throw new Fragment.InstantiationException(PathParser$$ExternalSyntheticOutline0.m("Unable to instantiate fragment ", str, ": calling Fragment constructor caused an exception"), e4);
                }
            }
        };
        this.mDefaultSpecialEffectsControllerFactory = new Object(this) { // from class: androidx.fragment.app.FragmentManager.4
        };
        this.mLaunchedFragments = new ArrayDeque();
        this.mExecCommit = new Runnable() { // from class: androidx.fragment.app.FragmentManager.5
            @Override // java.lang.Runnable
            public final void run() {
                FragmentManager.this.execPendingActions(true);
            }
        };
    }

    public static boolean isLoggingEnabled(int i) {
        if (Log.isLoggable("FragmentManager", i)) {
            return true;
        }
        return false;
    }

    public static boolean isMenuAvailable(Fragment fragment) {
        boolean z;
        if (fragment.mHasMenu && fragment.mMenuVisible) {
            return true;
        }
        Iterator it = ((ArrayList) fragment.mChildFragmentManager.mFragmentStore.getActiveFragments()).iterator();
        boolean z2 = false;
        while (true) {
            if (it.hasNext()) {
                Fragment fragment2 = (Fragment) it.next();
                if (fragment2 != null) {
                    z2 = isMenuAvailable(fragment2);
                }
                if (z2) {
                    z = true;
                    break;
                }
            } else {
                z = false;
                break;
            }
        }
        if (z) {
            return true;
        }
        return false;
    }

    public static boolean isParentMenuVisible(Fragment fragment) {
        if (fragment == null) {
            return true;
        }
        if (fragment.mMenuVisible && (fragment.mFragmentManager == null || isParentMenuVisible(fragment.mParentFragment))) {
            return true;
        }
        return false;
    }

    public static boolean isPrimaryNavigation(Fragment fragment) {
        if (fragment == null) {
            return true;
        }
        FragmentManager fragmentManager = fragment.mFragmentManager;
        if (fragment.equals(fragmentManager.mPrimaryNav) && isPrimaryNavigation(fragmentManager.mParent)) {
            return true;
        }
        return false;
    }

    public final FragmentStateManager addFragment(Fragment fragment) {
        String str = fragment.mPreviousWho;
        if (str != null) {
            FragmentStrictMode.onFragmentReuse(fragment, str);
        }
        if (isLoggingEnabled(2)) {
            fragment.toString();
        }
        FragmentStateManager createOrGetFragmentStateManager = createOrGetFragmentStateManager(fragment);
        fragment.mFragmentManager = this;
        FragmentStore fragmentStore = this.mFragmentStore;
        fragmentStore.makeActive(createOrGetFragmentStateManager);
        if (!fragment.mDetached) {
            fragmentStore.addFragment(fragment);
            fragment.mRemoving = false;
            if (fragment.mView == null) {
                fragment.mHiddenChanged = false;
            }
            if (isMenuAvailable(fragment)) {
                this.mNeedMenuInvalidate = true;
            }
        }
        return createOrGetFragmentStateManager;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void attachController(FragmentHostCallback fragmentHostCallback, FragmentContainer fragmentContainer, final Fragment fragment) {
        String str;
        if (this.mHost == null) {
            this.mHost = fragmentHostCallback;
            this.mContainer = fragmentContainer;
            this.mParent = fragment;
            CopyOnWriteArrayList copyOnWriteArrayList = this.mOnAttachListeners;
            if (fragment != null) {
                copyOnWriteArrayList.add(new FragmentOnAttachListener(this) { // from class: androidx.fragment.app.FragmentManager.7
                    @Override // androidx.fragment.app.FragmentOnAttachListener
                    public final void onAttachFragment$1() {
                        fragment.getClass();
                    }
                });
            } else if (fragmentHostCallback instanceof FragmentOnAttachListener) {
                copyOnWriteArrayList.add((FragmentOnAttachListener) fragmentHostCallback);
            }
            if (this.mParent != null) {
                updateOnBackPressedCallbackEnabled();
            }
            if (fragmentHostCallback instanceof OnBackPressedDispatcherOwner) {
                OnBackPressedDispatcherOwner onBackPressedDispatcherOwner = (OnBackPressedDispatcherOwner) fragmentHostCallback;
                OnBackPressedDispatcher onBackPressedDispatcher = onBackPressedDispatcherOwner.getOnBackPressedDispatcher();
                this.mOnBackPressedDispatcher = onBackPressedDispatcher;
                LifecycleOwner lifecycleOwner = onBackPressedDispatcherOwner;
                if (fragment != null) {
                    lifecycleOwner = fragment;
                }
                onBackPressedDispatcher.addCallback(lifecycleOwner, this.mOnBackPressedCallback);
            }
            if (fragment != null) {
                FragmentManagerViewModel fragmentManagerViewModel = fragment.mFragmentManager.mNonConfig;
                HashMap hashMap = fragmentManagerViewModel.mChildNonConfigs;
                FragmentManagerViewModel fragmentManagerViewModel2 = (FragmentManagerViewModel) hashMap.get(fragment.mWho);
                if (fragmentManagerViewModel2 == null) {
                    fragmentManagerViewModel2 = new FragmentManagerViewModel(fragmentManagerViewModel.mStateAutomaticallySaved);
                    hashMap.put(fragment.mWho, fragmentManagerViewModel2);
                }
                this.mNonConfig = fragmentManagerViewModel2;
            } else if (fragmentHostCallback instanceof ViewModelStoreOwner) {
                this.mNonConfig = (FragmentManagerViewModel) new ViewModelProvider(((ViewModelStoreOwner) fragmentHostCallback).getViewModelStore(), FragmentManagerViewModel.FACTORY).get(FragmentManagerViewModel.class);
            } else {
                this.mNonConfig = new FragmentManagerViewModel(false);
            }
            this.mNonConfig.mIsStateSaved = isStateSaved();
            this.mFragmentStore.mNonConfig = this.mNonConfig;
            Object obj = this.mHost;
            if ((obj instanceof SavedStateRegistryOwner) && fragment == null) {
                SavedStateRegistry savedStateRegistry = ((SavedStateRegistryOwner) obj).getSavedStateRegistry();
                final FragmentManagerImpl fragmentManagerImpl = (FragmentManagerImpl) this;
                savedStateRegistry.registerSavedStateProvider("android:support:fragments", new SavedStateRegistry.SavedStateProvider() { // from class: androidx.fragment.app.FragmentManager$$ExternalSyntheticLambda1
                    @Override // androidx.savedstate.SavedStateRegistry.SavedStateProvider
                    public final Bundle saveState() {
                        return fragmentManagerImpl.saveAllStateInternal();
                    }
                });
                Bundle consumeRestoredStateForKey = savedStateRegistry.consumeRestoredStateForKey("android:support:fragments");
                if (consumeRestoredStateForKey != null) {
                    restoreSaveStateInternal(consumeRestoredStateForKey);
                }
            }
            Object obj2 = this.mHost;
            if (obj2 instanceof ActivityResultRegistryOwner) {
                ActivityResultRegistry activityResultRegistry = ((ActivityResultRegistryOwner) obj2).getActivityResultRegistry();
                if (fragment != null) {
                    str = AbstractResolvableFuture$$ExternalSyntheticOutline0.m(new StringBuilder(), fragment.mWho, ":");
                } else {
                    str = "";
                }
                String m = KeyAttributes$$ExternalSyntheticOutline0.m("FragmentManager:", str);
                this.mStartActivityForResult = activityResultRegistry.register(AbstractResolvableFuture$$ExternalSyntheticOutline0.m(m, "StartActivityForResult"), new ActivityResultContract() { // from class: androidx.activity.result.contract.ActivityResultContracts$StartActivityForResult

                    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
                    /* loaded from: classes.dex */
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

                    @Override // androidx.activity.result.contract.ActivityResultContract
                    public final Object parseResult(int i, Intent intent) {
                        return new ActivityResult(i, intent);
                    }
                }, new ActivityResultCallback() { // from class: androidx.fragment.app.FragmentManager.8
                    @Override // androidx.activity.result.ActivityResultCallback
                    public final void onActivityResult(Object obj3) {
                        ActivityResult activityResult = (ActivityResult) obj3;
                        FragmentManager fragmentManager = FragmentManager.this;
                        LaunchedFragmentInfo launchedFragmentInfo = (LaunchedFragmentInfo) fragmentManager.mLaunchedFragments.pollFirst();
                        if (launchedFragmentInfo == null) {
                            Log.w("FragmentManager", "No Activities were started for result for " + this);
                            return;
                        }
                        String str2 = launchedFragmentInfo.mWho;
                        Fragment findFragmentByWho = fragmentManager.mFragmentStore.findFragmentByWho(str2);
                        if (findFragmentByWho == null) {
                            MotionLayout$$ExternalSyntheticOutline0.m("Activity result delivered for unknown Fragment ", str2, "FragmentManager");
                            return;
                        }
                        int i = activityResult.mResultCode;
                        Intent intent = activityResult.mData;
                        if (FragmentManager.isLoggingEnabled(2)) {
                            findFragmentByWho.toString();
                            Objects.toString(intent);
                        }
                    }
                });
                this.mStartIntentSenderForResult = activityResultRegistry.register(AbstractResolvableFuture$$ExternalSyntheticOutline0.m(m, "StartIntentSenderForResult"), new FragmentIntentSenderContract(), new ActivityResultCallback() { // from class: androidx.fragment.app.FragmentManager.9
                    @Override // androidx.activity.result.ActivityResultCallback
                    public final void onActivityResult(Object obj3) {
                        ActivityResult activityResult = (ActivityResult) obj3;
                        FragmentManager fragmentManager = FragmentManager.this;
                        LaunchedFragmentInfo launchedFragmentInfo = (LaunchedFragmentInfo) fragmentManager.mLaunchedFragments.pollFirst();
                        if (launchedFragmentInfo == null) {
                            Log.w("FragmentManager", "No IntentSenders were started for " + this);
                            return;
                        }
                        String str2 = launchedFragmentInfo.mWho;
                        Fragment findFragmentByWho = fragmentManager.mFragmentStore.findFragmentByWho(str2);
                        if (findFragmentByWho == null) {
                            MotionLayout$$ExternalSyntheticOutline0.m("Intent Sender result delivered for unknown Fragment ", str2, "FragmentManager");
                            return;
                        }
                        int i = activityResult.mResultCode;
                        Intent intent = activityResult.mData;
                        if (FragmentManager.isLoggingEnabled(2)) {
                            findFragmentByWho.toString();
                            Objects.toString(intent);
                        }
                    }
                });
                this.mRequestPermissions = activityResultRegistry.register(AbstractResolvableFuture$$ExternalSyntheticOutline0.m(m, "RequestPermissions"), new ActivityResultContract() { // from class: androidx.activity.result.contract.ActivityResultContracts$RequestMultiplePermissions

                    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
                    /* loaded from: classes.dex */
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

                    @Override // androidx.activity.result.contract.ActivityResultContract
                    public final Object parseResult(int i, Intent intent) {
                        boolean z;
                        if (i != -1) {
                            return MapsKt__MapsKt.emptyMap();
                        }
                        if (intent == null) {
                            return MapsKt__MapsKt.emptyMap();
                        }
                        String[] stringArrayExtra = intent.getStringArrayExtra("androidx.activity.result.contract.extra.PERMISSIONS");
                        int[] intArrayExtra = intent.getIntArrayExtra("androidx.activity.result.contract.extra.PERMISSION_GRANT_RESULTS");
                        if (intArrayExtra != null && stringArrayExtra != null) {
                            ArrayList arrayList = new ArrayList(intArrayExtra.length);
                            for (int i2 : intArrayExtra) {
                                if (i2 == 0) {
                                    z = true;
                                } else {
                                    z = false;
                                }
                                arrayList.add(Boolean.valueOf(z));
                            }
                            return MapsKt__MapsKt.toMap(CollectionsKt___CollectionsKt.zip(ArraysKt___ArraysKt.filterNotNull(stringArrayExtra), arrayList));
                        }
                        return MapsKt__MapsKt.emptyMap();
                    }
                }, new ActivityResultCallback() { // from class: androidx.fragment.app.FragmentManager.10
                    @Override // androidx.activity.result.ActivityResultCallback
                    public final void onActivityResult(Object obj3) {
                        int i;
                        Map map = (Map) obj3;
                        ArrayList arrayList = new ArrayList(map.values());
                        int[] iArr = new int[arrayList.size()];
                        for (int i2 = 0; i2 < arrayList.size(); i2++) {
                            if (((Boolean) arrayList.get(i2)).booleanValue()) {
                                i = 0;
                            } else {
                                i = -1;
                            }
                            iArr[i2] = i;
                        }
                        FragmentManager fragmentManager = FragmentManager.this;
                        LaunchedFragmentInfo launchedFragmentInfo = (LaunchedFragmentInfo) fragmentManager.mLaunchedFragments.pollFirst();
                        if (launchedFragmentInfo == null) {
                            Log.w("FragmentManager", "No permissions were requested for " + this);
                        } else {
                            String str2 = launchedFragmentInfo.mWho;
                            if (fragmentManager.mFragmentStore.findFragmentByWho(str2) == null) {
                                MotionLayout$$ExternalSyntheticOutline0.m("Permission request result delivered for unknown Fragment ", str2, "FragmentManager");
                            }
                        }
                    }
                });
            }
            Object obj3 = this.mHost;
            if (obj3 instanceof OnConfigurationChangedProvider) {
                ((OnConfigurationChangedProvider) obj3).addOnConfigurationChangedListener(this.mOnConfigurationChangedListener);
            }
            Object obj4 = this.mHost;
            if (obj4 instanceof OnTrimMemoryProvider) {
                ((OnTrimMemoryProvider) obj4).addOnTrimMemoryListener(this.mOnTrimMemoryListener);
            }
            Object obj5 = this.mHost;
            if (obj5 instanceof OnMultiWindowModeChangedProvider) {
                ((OnMultiWindowModeChangedProvider) obj5).addOnMultiWindowModeChangedListener(this.mOnMultiWindowModeChangedListener);
            }
            Object obj6 = this.mHost;
            if (obj6 instanceof OnPictureInPictureModeChangedProvider) {
                ((OnPictureInPictureModeChangedProvider) obj6).addOnPictureInPictureModeChangedListener(this.mOnPictureInPictureModeChangedListener);
            }
            Object obj7 = this.mHost;
            if ((obj7 instanceof MenuHost) && fragment == null) {
                ((MenuHost) obj7).addMenuProvider(this.mMenuProvider);
                return;
            }
            return;
        }
        throw new IllegalStateException("Already attached");
    }

    public final void attachFragment(Fragment fragment) {
        if (isLoggingEnabled(2)) {
            Objects.toString(fragment);
        }
        if (fragment.mDetached) {
            fragment.mDetached = false;
            if (!fragment.mAdded) {
                this.mFragmentStore.addFragment(fragment);
                if (isLoggingEnabled(2)) {
                    fragment.toString();
                }
                if (isMenuAvailable(fragment)) {
                    this.mNeedMenuInvalidate = true;
                }
            }
        }
    }

    public final void cleanupExec() {
        this.mExecutingActions = false;
        this.mTmpIsPop.clear();
        this.mTmpRecords.clear();
    }

    public final Set collectAllSpecialEffectsController() {
        HashSet hashSet = new HashSet();
        Iterator it = ((ArrayList) this.mFragmentStore.getActiveFragmentStateManagers()).iterator();
        while (it.hasNext()) {
            ViewGroup viewGroup = ((FragmentStateManager) it.next()).mFragment.mContainer;
            if (viewGroup != null) {
                hashSet.add(SpecialEffectsController.getOrCreateController(viewGroup, getSpecialEffectsControllerFactory()));
            }
        }
        return hashSet;
    }

    public final FragmentStateManager createOrGetFragmentStateManager(Fragment fragment) {
        String str = fragment.mWho;
        FragmentStore fragmentStore = this.mFragmentStore;
        FragmentStateManager fragmentStateManager = (FragmentStateManager) fragmentStore.mActive.get(str);
        if (fragmentStateManager != null) {
            return fragmentStateManager;
        }
        FragmentStateManager fragmentStateManager2 = new FragmentStateManager(this.mLifecycleCallbacksDispatcher, fragmentStore, fragment);
        fragmentStateManager2.restoreState(this.mHost.mContext.getClassLoader());
        fragmentStateManager2.mFragmentManagerState = this.mCurState;
        return fragmentStateManager2;
    }

    public final void detachFragment(Fragment fragment) {
        if (isLoggingEnabled(2)) {
            Objects.toString(fragment);
        }
        if (!fragment.mDetached) {
            fragment.mDetached = true;
            if (fragment.mAdded) {
                if (isLoggingEnabled(2)) {
                    fragment.toString();
                }
                FragmentStore fragmentStore = this.mFragmentStore;
                synchronized (fragmentStore.mAdded) {
                    fragmentStore.mAdded.remove(fragment);
                }
                fragment.mAdded = false;
                if (isMenuAvailable(fragment)) {
                    this.mNeedMenuInvalidate = true;
                }
                setVisibleRemovingFragment(fragment);
            }
        }
    }

    public final void dispatchConfigurationChanged(boolean z, Configuration configuration) {
        if (z && (this.mHost instanceof OnConfigurationChangedProvider)) {
            throwException(new IllegalStateException("Do not call dispatchConfigurationChanged() on host. Host implements OnConfigurationChangedProvider and automatically dispatches configuration changes to fragments."));
            throw null;
        }
        for (Fragment fragment : this.mFragmentStore.getFragments()) {
            if (fragment != null) {
                fragment.onConfigurationChanged(configuration);
                if (z) {
                    fragment.mChildFragmentManager.dispatchConfigurationChanged(true, configuration);
                }
            }
        }
    }

    public final boolean dispatchContextItemSelected() {
        boolean z;
        if (this.mCurState < 1) {
            return false;
        }
        for (Fragment fragment : this.mFragmentStore.getFragments()) {
            if (fragment != null) {
                if (!fragment.mHidden) {
                    z = fragment.mChildFragmentManager.dispatchContextItemSelected();
                } else {
                    z = false;
                }
                if (z) {
                    return true;
                }
            }
        }
        return false;
    }

    public final boolean dispatchCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        boolean z;
        boolean z2;
        if (this.mCurState < 1) {
            return false;
        }
        ArrayList arrayList = null;
        boolean z3 = false;
        for (Fragment fragment : this.mFragmentStore.getFragments()) {
            if (fragment != null && isParentMenuVisible(fragment)) {
                if (!fragment.mHidden) {
                    if (fragment.mHasMenu && fragment.mMenuVisible) {
                        fragment.onCreateOptionsMenu(menu, menuInflater);
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    z = z2 | fragment.mChildFragmentManager.dispatchCreateOptionsMenu(menu, menuInflater);
                } else {
                    z = false;
                }
                if (z) {
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    arrayList.add(fragment);
                    z3 = true;
                }
            }
        }
        if (this.mCreatedMenus != null) {
            for (int i = 0; i < this.mCreatedMenus.size(); i++) {
                Fragment fragment2 = (Fragment) this.mCreatedMenus.get(i);
                if (arrayList == null || !arrayList.contains(fragment2)) {
                    fragment2.getClass();
                }
            }
        }
        this.mCreatedMenus = arrayList;
        return z3;
    }

    public final void dispatchDestroy() {
        boolean z = true;
        this.mDestroyed = true;
        execPendingActions(true);
        Iterator it = ((HashSet) collectAllSpecialEffectsController()).iterator();
        while (it.hasNext()) {
            ((SpecialEffectsController) it.next()).forceCompleteAllOperations();
        }
        FragmentHostCallback fragmentHostCallback = this.mHost;
        boolean z2 = fragmentHostCallback instanceof ViewModelStoreOwner;
        FragmentStore fragmentStore = this.mFragmentStore;
        if (z2) {
            z = fragmentStore.mNonConfig.mHasBeenCleared;
        } else {
            Context context = fragmentHostCallback.mContext;
            if (context instanceof Activity) {
                z = true ^ ((Activity) context).isChangingConfigurations();
            }
        }
        if (z) {
            Iterator it2 = this.mBackStackStates.values().iterator();
            while (it2.hasNext()) {
                for (String str : ((BackStackState) it2.next()).mFragments) {
                    FragmentManagerViewModel fragmentManagerViewModel = fragmentStore.mNonConfig;
                    if (isLoggingEnabled(3)) {
                        fragmentManagerViewModel.getClass();
                        Log.d("FragmentManager", "Clearing non-config state for saved state of Fragment " + str);
                    }
                    fragmentManagerViewModel.clearNonConfigStateInternal(str);
                }
            }
        }
        dispatchStateChange(-1);
        Object obj = this.mHost;
        if (obj instanceof OnTrimMemoryProvider) {
            ((OnTrimMemoryProvider) obj).removeOnTrimMemoryListener(this.mOnTrimMemoryListener);
        }
        Object obj2 = this.mHost;
        if (obj2 instanceof OnConfigurationChangedProvider) {
            ((OnConfigurationChangedProvider) obj2).removeOnConfigurationChangedListener(this.mOnConfigurationChangedListener);
        }
        Object obj3 = this.mHost;
        if (obj3 instanceof OnMultiWindowModeChangedProvider) {
            ((OnMultiWindowModeChangedProvider) obj3).removeOnMultiWindowModeChangedListener(this.mOnMultiWindowModeChangedListener);
        }
        Object obj4 = this.mHost;
        if (obj4 instanceof OnPictureInPictureModeChangedProvider) {
            ((OnPictureInPictureModeChangedProvider) obj4).removeOnPictureInPictureModeChangedListener(this.mOnPictureInPictureModeChangedListener);
        }
        Object obj5 = this.mHost;
        if (obj5 instanceof MenuHost) {
            ((MenuHost) obj5).removeMenuProvider(this.mMenuProvider);
        }
        this.mHost = null;
        this.mContainer = null;
        this.mParent = null;
        if (this.mOnBackPressedDispatcher != null) {
            Iterator it3 = this.mOnBackPressedCallback.cancellables.iterator();
            while (it3.hasNext()) {
                ((Cancellable) it3.next()).cancel();
            }
            this.mOnBackPressedDispatcher = null;
        }
        ActivityResultRegistry.AnonymousClass3 anonymousClass3 = this.mStartActivityForResult;
        if (anonymousClass3 != null) {
            anonymousClass3.unregister();
            this.mStartIntentSenderForResult.unregister();
            this.mRequestPermissions.unregister();
        }
    }

    public final void dispatchLowMemory(boolean z) {
        if (z && (this.mHost instanceof OnTrimMemoryProvider)) {
            throwException(new IllegalStateException("Do not call dispatchLowMemory() on host. Host implements OnTrimMemoryProvider and automatically dispatches low memory callbacks to fragments."));
            throw null;
        }
        for (Fragment fragment : this.mFragmentStore.getFragments()) {
            if (fragment != null) {
                fragment.onLowMemory();
                if (z) {
                    fragment.mChildFragmentManager.dispatchLowMemory(true);
                }
            }
        }
    }

    public final void dispatchMultiWindowModeChanged(boolean z, boolean z2) {
        if (z2 && (this.mHost instanceof OnMultiWindowModeChangedProvider)) {
            throwException(new IllegalStateException("Do not call dispatchMultiWindowModeChanged() on host. Host implements OnMultiWindowModeChangedProvider and automatically dispatches multi-window mode changes to fragments."));
            throw null;
        }
        for (Fragment fragment : this.mFragmentStore.getFragments()) {
            if (fragment != null && z2) {
                fragment.mChildFragmentManager.dispatchMultiWindowModeChanged(z, true);
            }
        }
    }

    public final void dispatchOnHiddenChanged() {
        Iterator it = ((ArrayList) this.mFragmentStore.getActiveFragments()).iterator();
        while (it.hasNext()) {
            Fragment fragment = (Fragment) it.next();
            if (fragment != null) {
                fragment.isHidden();
                fragment.mChildFragmentManager.dispatchOnHiddenChanged();
            }
        }
    }

    public final boolean dispatchOptionsItemSelected(MenuItem menuItem) {
        boolean z;
        if (this.mCurState < 1) {
            return false;
        }
        for (Fragment fragment : this.mFragmentStore.getFragments()) {
            if (fragment != null) {
                if (!fragment.mHidden) {
                    if (fragment.mHasMenu && fragment.mMenuVisible && fragment.onOptionsItemSelected(menuItem)) {
                        z = true;
                    } else {
                        z = fragment.mChildFragmentManager.dispatchOptionsItemSelected(menuItem);
                    }
                } else {
                    z = false;
                }
                if (z) {
                    return true;
                }
            }
        }
        return false;
    }

    public final void dispatchOptionsMenuClosed() {
        if (this.mCurState < 1) {
            return;
        }
        for (Fragment fragment : this.mFragmentStore.getFragments()) {
            if (fragment != null && !fragment.mHidden) {
                fragment.mChildFragmentManager.dispatchOptionsMenuClosed();
            }
        }
    }

    public final void dispatchParentPrimaryNavigationFragmentChanged(Fragment fragment) {
        if (fragment != null && fragment.equals(findActiveFragment(fragment.mWho))) {
            fragment.mFragmentManager.getClass();
            boolean isPrimaryNavigation = isPrimaryNavigation(fragment);
            Boolean bool = fragment.mIsPrimaryNavigationFragment;
            if (bool == null || bool.booleanValue() != isPrimaryNavigation) {
                fragment.mIsPrimaryNavigationFragment = Boolean.valueOf(isPrimaryNavigation);
                FragmentManagerImpl fragmentManagerImpl = fragment.mChildFragmentManager;
                fragmentManagerImpl.updateOnBackPressedCallbackEnabled();
                fragmentManagerImpl.dispatchParentPrimaryNavigationFragmentChanged(fragmentManagerImpl.mPrimaryNav);
            }
        }
    }

    public final void dispatchPictureInPictureModeChanged(boolean z, boolean z2) {
        if (z2 && (this.mHost instanceof OnPictureInPictureModeChangedProvider)) {
            throwException(new IllegalStateException("Do not call dispatchPictureInPictureModeChanged() on host. Host implements OnPictureInPictureModeChangedProvider and automatically dispatches picture-in-picture mode changes to fragments."));
            throw null;
        }
        for (Fragment fragment : this.mFragmentStore.getFragments()) {
            if (fragment != null && z2) {
                fragment.mChildFragmentManager.dispatchPictureInPictureModeChanged(z, true);
            }
        }
    }

    public final boolean dispatchPrepareOptionsMenu(Menu menu) {
        boolean z;
        boolean z2;
        if (this.mCurState < 1) {
            return false;
        }
        boolean z3 = false;
        for (Fragment fragment : this.mFragmentStore.getFragments()) {
            if (fragment != null && isParentMenuVisible(fragment)) {
                if (!fragment.mHidden) {
                    if (fragment.mHasMenu && fragment.mMenuVisible) {
                        fragment.onPrepareOptionsMenu(menu);
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    z = fragment.mChildFragmentManager.dispatchPrepareOptionsMenu(menu) | z2;
                } else {
                    z = false;
                }
                if (z) {
                    z3 = true;
                }
            }
        }
        return z3;
    }

    public final void dispatchStateChange(int i) {
        try {
            this.mExecutingActions = true;
            for (FragmentStateManager fragmentStateManager : this.mFragmentStore.mActive.values()) {
                if (fragmentStateManager != null) {
                    fragmentStateManager.mFragmentManagerState = i;
                }
            }
            moveToState(i, false);
            Iterator it = ((HashSet) collectAllSpecialEffectsController()).iterator();
            while (it.hasNext()) {
                ((SpecialEffectsController) it.next()).forceCompleteAllOperations();
            }
            this.mExecutingActions = false;
            execPendingActions(true);
        } catch (Throwable th) {
            this.mExecutingActions = false;
            throw th;
        }
    }

    public final void doPendingDeferredStart() {
        if (this.mHavePendingDeferredStart) {
            this.mHavePendingDeferredStart = false;
            startPendingDeferredFragments();
        }
    }

    public final void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        int size;
        int size2;
        boolean z;
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        String m = AbstractResolvableFuture$$ExternalSyntheticOutline0.m(str, "    ");
        FragmentStore fragmentStore = this.mFragmentStore;
        fragmentStore.getClass();
        String str2 = str + "    ";
        HashMap hashMap = fragmentStore.mActive;
        if (!hashMap.isEmpty()) {
            printWriter.print(str);
            printWriter.println("Active Fragments:");
            for (FragmentStateManager fragmentStateManager : hashMap.values()) {
                printWriter.print(str);
                if (fragmentStateManager != null) {
                    Fragment fragment = fragmentStateManager.mFragment;
                    printWriter.println(fragment);
                    fragment.getClass();
                    printWriter.print(str2);
                    printWriter.print("mFragmentId=#");
                    printWriter.print(Integer.toHexString(fragment.mFragmentId));
                    printWriter.print(" mContainerId=#");
                    printWriter.print(Integer.toHexString(fragment.mContainerId));
                    printWriter.print(" mTag=");
                    printWriter.println(fragment.mTag);
                    printWriter.print(str2);
                    printWriter.print("mState=");
                    printWriter.print(fragment.mState);
                    printWriter.print(" mWho=");
                    printWriter.print(fragment.mWho);
                    printWriter.print(" mBackStackNesting=");
                    printWriter.println(fragment.mBackStackNesting);
                    printWriter.print(str2);
                    printWriter.print("mAdded=");
                    printWriter.print(fragment.mAdded);
                    printWriter.print(" mRemoving=");
                    printWriter.print(fragment.mRemoving);
                    printWriter.print(" mFromLayout=");
                    printWriter.print(fragment.mFromLayout);
                    printWriter.print(" mInLayout=");
                    printWriter.println(fragment.mInLayout);
                    printWriter.print(str2);
                    printWriter.print("mHidden=");
                    printWriter.print(fragment.mHidden);
                    printWriter.print(" mDetached=");
                    printWriter.print(fragment.mDetached);
                    printWriter.print(" mMenuVisible=");
                    printWriter.print(fragment.mMenuVisible);
                    printWriter.print(" mHasMenu=");
                    printWriter.println(fragment.mHasMenu);
                    printWriter.print(str2);
                    printWriter.print("mRetainInstance=");
                    printWriter.print(fragment.mRetainInstance);
                    printWriter.print(" mUserVisibleHint=");
                    printWriter.println(fragment.mUserVisibleHint);
                    if (fragment.mFragmentManager != null) {
                        printWriter.print(str2);
                        printWriter.print("mFragmentManager=");
                        printWriter.println(fragment.mFragmentManager);
                    }
                    if (fragment.mHost != null) {
                        printWriter.print(str2);
                        printWriter.print("mHost=");
                        printWriter.println(fragment.mHost);
                    }
                    if (fragment.mParentFragment != null) {
                        printWriter.print(str2);
                        printWriter.print("mParentFragment=");
                        printWriter.println(fragment.mParentFragment);
                    }
                    if (fragment.mArguments != null) {
                        printWriter.print(str2);
                        printWriter.print("mArguments=");
                        printWriter.println(fragment.mArguments);
                    }
                    if (fragment.mSavedFragmentState != null) {
                        printWriter.print(str2);
                        printWriter.print("mSavedFragmentState=");
                        printWriter.println(fragment.mSavedFragmentState);
                    }
                    if (fragment.mSavedViewState != null) {
                        printWriter.print(str2);
                        printWriter.print("mSavedViewState=");
                        printWriter.println(fragment.mSavedViewState);
                    }
                    if (fragment.mSavedViewRegistryState != null) {
                        printWriter.print(str2);
                        printWriter.print("mSavedViewRegistryState=");
                        printWriter.println(fragment.mSavedViewRegistryState);
                    }
                    Object targetFragment = fragment.getTargetFragment(false);
                    if (targetFragment != null) {
                        printWriter.print(str2);
                        printWriter.print("mTarget=");
                        printWriter.print(targetFragment);
                        printWriter.print(" mTargetRequestCode=");
                        printWriter.println(fragment.mTargetRequestCode);
                    }
                    printWriter.print(str2);
                    printWriter.print("mPopDirection=");
                    Fragment.AnimationInfo animationInfo = fragment.mAnimationInfo;
                    if (animationInfo == null) {
                        z = false;
                    } else {
                        z = animationInfo.mIsPop;
                    }
                    printWriter.println(z);
                    Fragment.AnimationInfo animationInfo2 = fragment.mAnimationInfo;
                    if (animationInfo2 == null) {
                        i = 0;
                    } else {
                        i = animationInfo2.mEnterAnim;
                    }
                    if (i != 0) {
                        printWriter.print(str2);
                        printWriter.print("getEnterAnim=");
                        Fragment.AnimationInfo animationInfo3 = fragment.mAnimationInfo;
                        if (animationInfo3 == null) {
                            i8 = 0;
                        } else {
                            i8 = animationInfo3.mEnterAnim;
                        }
                        printWriter.println(i8);
                    }
                    Fragment.AnimationInfo animationInfo4 = fragment.mAnimationInfo;
                    if (animationInfo4 == null) {
                        i2 = 0;
                    } else {
                        i2 = animationInfo4.mExitAnim;
                    }
                    if (i2 != 0) {
                        printWriter.print(str2);
                        printWriter.print("getExitAnim=");
                        Fragment.AnimationInfo animationInfo5 = fragment.mAnimationInfo;
                        if (animationInfo5 == null) {
                            i7 = 0;
                        } else {
                            i7 = animationInfo5.mExitAnim;
                        }
                        printWriter.println(i7);
                    }
                    Fragment.AnimationInfo animationInfo6 = fragment.mAnimationInfo;
                    if (animationInfo6 == null) {
                        i3 = 0;
                    } else {
                        i3 = animationInfo6.mPopEnterAnim;
                    }
                    if (i3 != 0) {
                        printWriter.print(str2);
                        printWriter.print("getPopEnterAnim=");
                        Fragment.AnimationInfo animationInfo7 = fragment.mAnimationInfo;
                        if (animationInfo7 == null) {
                            i6 = 0;
                        } else {
                            i6 = animationInfo7.mPopEnterAnim;
                        }
                        printWriter.println(i6);
                    }
                    Fragment.AnimationInfo animationInfo8 = fragment.mAnimationInfo;
                    if (animationInfo8 == null) {
                        i4 = 0;
                    } else {
                        i4 = animationInfo8.mPopExitAnim;
                    }
                    if (i4 != 0) {
                        printWriter.print(str2);
                        printWriter.print("getPopExitAnim=");
                        Fragment.AnimationInfo animationInfo9 = fragment.mAnimationInfo;
                        if (animationInfo9 == null) {
                            i5 = 0;
                        } else {
                            i5 = animationInfo9.mPopExitAnim;
                        }
                        printWriter.println(i5);
                    }
                    if (fragment.mContainer != null) {
                        printWriter.print(str2);
                        printWriter.print("mContainer=");
                        printWriter.println(fragment.mContainer);
                    }
                    if (fragment.mView != null) {
                        printWriter.print(str2);
                        printWriter.print("mView=");
                        printWriter.println(fragment.mView);
                    }
                    if (fragment.getContext() != null) {
                        new LoaderManagerImpl(fragment, fragment.getViewModelStore()).dump(str2, fileDescriptor, printWriter, strArr);
                    }
                    printWriter.print(str2);
                    printWriter.println("Child " + fragment.mChildFragmentManager + ":");
                    fragment.mChildFragmentManager.dump(AbstractResolvableFuture$$ExternalSyntheticOutline0.m(str2, "  "), fileDescriptor, printWriter, strArr);
                } else {
                    printWriter.println("null");
                }
            }
        }
        ArrayList arrayList = fragmentStore.mAdded;
        int size3 = arrayList.size();
        if (size3 > 0) {
            printWriter.print(str);
            printWriter.println("Added Fragments:");
            for (int i9 = 0; i9 < size3; i9++) {
                Fragment fragment2 = (Fragment) arrayList.get(i9);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i9);
                printWriter.print(": ");
                printWriter.println(fragment2.toString());
            }
        }
        ArrayList arrayList2 = this.mCreatedMenus;
        if (arrayList2 != null && (size2 = arrayList2.size()) > 0) {
            printWriter.print(str);
            printWriter.println("Fragments Created Menus:");
            for (int i10 = 0; i10 < size2; i10++) {
                Fragment fragment3 = (Fragment) this.mCreatedMenus.get(i10);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i10);
                printWriter.print(": ");
                printWriter.println(fragment3.toString());
            }
        }
        ArrayList arrayList3 = this.mBackStack;
        if (arrayList3 != null && (size = arrayList3.size()) > 0) {
            printWriter.print(str);
            printWriter.println("Back Stack:");
            for (int i11 = 0; i11 < size; i11++) {
                BackStackRecord backStackRecord = (BackStackRecord) this.mBackStack.get(i11);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i11);
                printWriter.print(": ");
                printWriter.println(backStackRecord.toString());
                backStackRecord.dump(m, printWriter, true);
            }
        }
        printWriter.print(str);
        printWriter.println("Back Stack Index: " + this.mBackStackIndex.get());
        synchronized (this.mPendingActions) {
            int size4 = this.mPendingActions.size();
            if (size4 > 0) {
                printWriter.print(str);
                printWriter.println("Pending Actions:");
                for (int i12 = 0; i12 < size4; i12++) {
                    Object obj = (OpGenerator) this.mPendingActions.get(i12);
                    printWriter.print(str);
                    printWriter.print("  #");
                    printWriter.print(i12);
                    printWriter.print(": ");
                    printWriter.println(obj);
                }
            }
        }
        printWriter.print(str);
        printWriter.println("FragmentManager misc state:");
        printWriter.print(str);
        printWriter.print("  mHost=");
        printWriter.println(this.mHost);
        printWriter.print(str);
        printWriter.print("  mContainer=");
        printWriter.println(this.mContainer);
        if (this.mParent != null) {
            printWriter.print(str);
            printWriter.print("  mParent=");
            printWriter.println(this.mParent);
        }
        printWriter.print(str);
        printWriter.print("  mCurState=");
        printWriter.print(this.mCurState);
        printWriter.print(" mStateSaved=");
        printWriter.print(this.mStateSaved);
        printWriter.print(" mStopped=");
        printWriter.print(this.mStopped);
        printWriter.print(" mDestroyed=");
        printWriter.println(this.mDestroyed);
        if (this.mNeedMenuInvalidate) {
            printWriter.print(str);
            printWriter.print("  mNeedMenuInvalidate=");
            printWriter.println(this.mNeedMenuInvalidate);
        }
    }

    public final void enqueueAction(OpGenerator opGenerator, boolean z) {
        if (!z) {
            if (this.mHost == null) {
                if (this.mDestroyed) {
                    throw new IllegalStateException("FragmentManager has been destroyed");
                }
                throw new IllegalStateException("FragmentManager has not been attached to a host.");
            }
            if (isStateSaved()) {
                throw new IllegalStateException("Can not perform this action after onSaveInstanceState");
            }
        }
        synchronized (this.mPendingActions) {
            if (this.mHost == null) {
                if (z) {
                } else {
                    throw new IllegalStateException("Activity has been destroyed");
                }
            } else {
                this.mPendingActions.add(opGenerator);
                scheduleCommit();
            }
        }
    }

    public final void ensureExecReady(boolean z) {
        if (!this.mExecutingActions) {
            if (this.mHost == null) {
                if (this.mDestroyed) {
                    throw new IllegalStateException("FragmentManager has been destroyed");
                }
                throw new IllegalStateException("FragmentManager has not been attached to a host.");
            }
            if (Looper.myLooper() == this.mHost.mHandler.getLooper()) {
                if (!z && isStateSaved()) {
                    throw new IllegalStateException("Can not perform this action after onSaveInstanceState");
                }
                if (this.mTmpRecords == null) {
                    this.mTmpRecords = new ArrayList();
                    this.mTmpIsPop = new ArrayList();
                    return;
                }
                return;
            }
            throw new IllegalStateException("Must be called from main thread of fragment host");
        }
        throw new IllegalStateException("FragmentManager is already executing transactions");
    }

    public final boolean execPendingActions(boolean z) {
        boolean z2;
        ensureExecReady(z);
        boolean z3 = false;
        while (true) {
            ArrayList arrayList = this.mTmpRecords;
            ArrayList arrayList2 = this.mTmpIsPop;
            synchronized (this.mPendingActions) {
                if (this.mPendingActions.isEmpty()) {
                    z2 = false;
                } else {
                    try {
                        int size = this.mPendingActions.size();
                        z2 = false;
                        for (int i = 0; i < size; i++) {
                            z2 |= ((OpGenerator) this.mPendingActions.get(i)).generateOps(arrayList, arrayList2);
                        }
                    } finally {
                    }
                }
            }
            if (z2) {
                z3 = true;
                this.mExecutingActions = true;
                try {
                    removeRedundantOperationsAndExecute(this.mTmpRecords, this.mTmpIsPop);
                } finally {
                    cleanupExec();
                }
            } else {
                updateOnBackPressedCallbackEnabled();
                doPendingDeferredStart();
                this.mFragmentStore.mActive.values().removeAll(Collections.singleton(null));
                return z3;
            }
        }
    }

    public final void execSingleAction(OpGenerator opGenerator, boolean z) {
        if (z && (this.mHost == null || this.mDestroyed)) {
            return;
        }
        ensureExecReady(z);
        if (opGenerator.generateOps(this.mTmpRecords, this.mTmpIsPop)) {
            this.mExecutingActions = true;
            try {
                removeRedundantOperationsAndExecute(this.mTmpRecords, this.mTmpIsPop);
            } finally {
                cleanupExec();
            }
        }
        updateOnBackPressedCallbackEnabled();
        doPendingDeferredStart();
        this.mFragmentStore.mActive.values().removeAll(Collections.singleton(null));
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:190:0x0351. Please report as an issue. */
    /* JADX WARN: Type inference failed for: r3v37 */
    /* JADX WARN: Type inference failed for: r3v38, types: [int, boolean] */
    /* JADX WARN: Type inference failed for: r3v39 */
    public final void executeOpsTogether(ArrayList arrayList, ArrayList arrayList2, int i, int i2) {
        ViewGroup viewGroup;
        FragmentStore fragmentStore;
        FragmentStore fragmentStore2;
        FragmentStore fragmentStore3;
        int i3;
        int i4;
        ?? r3;
        ArrayList arrayList3 = arrayList;
        ArrayList arrayList4 = arrayList2;
        boolean z = ((BackStackRecord) arrayList3.get(i)).mReorderingAllowed;
        ArrayList arrayList5 = this.mTmpAddedFragments;
        if (arrayList5 == null) {
            this.mTmpAddedFragments = new ArrayList();
        } else {
            arrayList5.clear();
        }
        ArrayList arrayList6 = this.mTmpAddedFragments;
        FragmentStore fragmentStore4 = this.mFragmentStore;
        arrayList6.addAll(fragmentStore4.getFragments());
        Fragment fragment = this.mPrimaryNav;
        int i5 = i;
        boolean z2 = false;
        while (true) {
            int i6 = 1;
            if (i5 < i2) {
                BackStackRecord backStackRecord = (BackStackRecord) arrayList3.get(i5);
                if (!((Boolean) arrayList4.get(i5)).booleanValue()) {
                    ArrayList arrayList7 = this.mTmpAddedFragments;
                    int i7 = 0;
                    while (true) {
                        ArrayList arrayList8 = backStackRecord.mOps;
                        if (i7 < arrayList8.size()) {
                            FragmentTransaction.Op op = (FragmentTransaction.Op) arrayList8.get(i7);
                            int i8 = op.mCmd;
                            if (i8 != i6) {
                                if (i8 != 2) {
                                    if (i8 != 3 && i8 != 6) {
                                        if (i8 != 7) {
                                            if (i8 == 8) {
                                                arrayList8.add(i7, new FragmentTransaction.Op(9, fragment, true));
                                                op.mFromExpandedOp = true;
                                                i7++;
                                                fragment = op.mFragment;
                                            }
                                        } else {
                                            fragmentStore3 = fragmentStore4;
                                            i3 = 1;
                                        }
                                    } else {
                                        arrayList7.remove(op.mFragment);
                                        Fragment fragment2 = op.mFragment;
                                        if (fragment2 == fragment) {
                                            arrayList8.add(i7, new FragmentTransaction.Op(9, fragment2));
                                            i7++;
                                            fragmentStore3 = fragmentStore4;
                                            i3 = 1;
                                            fragment = null;
                                        }
                                    }
                                    fragmentStore3 = fragmentStore4;
                                    i3 = 1;
                                } else {
                                    Fragment fragment3 = op.mFragment;
                                    int i9 = fragment3.mContainerId;
                                    int size = arrayList7.size() - 1;
                                    boolean z3 = false;
                                    while (size >= 0) {
                                        FragmentStore fragmentStore5 = fragmentStore4;
                                        Fragment fragment4 = (Fragment) arrayList7.get(size);
                                        if (fragment4.mContainerId == i9) {
                                            if (fragment4 == fragment3) {
                                                i4 = i9;
                                                z3 = true;
                                            } else {
                                                if (fragment4 == fragment) {
                                                    i4 = i9;
                                                    r3 = 1;
                                                    arrayList8.add(i7, new FragmentTransaction.Op(9, fragment4, true));
                                                    i7++;
                                                    fragment = null;
                                                } else {
                                                    i4 = i9;
                                                    r3 = 1;
                                                }
                                                FragmentTransaction.Op op2 = new FragmentTransaction.Op(3, fragment4, (boolean) r3);
                                                op2.mEnterAnim = op.mEnterAnim;
                                                op2.mPopEnterAnim = op.mPopEnterAnim;
                                                op2.mExitAnim = op.mExitAnim;
                                                op2.mPopExitAnim = op.mPopExitAnim;
                                                arrayList8.add(i7, op2);
                                                arrayList7.remove(fragment4);
                                                i7 += r3;
                                                fragment = fragment;
                                            }
                                        } else {
                                            i4 = i9;
                                        }
                                        size--;
                                        i9 = i4;
                                        fragmentStore4 = fragmentStore5;
                                    }
                                    fragmentStore3 = fragmentStore4;
                                    i3 = 1;
                                    if (z3) {
                                        arrayList8.remove(i7);
                                        i7--;
                                    } else {
                                        op.mCmd = 1;
                                        op.mFromExpandedOp = true;
                                        arrayList7.add(fragment3);
                                    }
                                }
                                i7 += i3;
                                i6 = i3;
                                fragmentStore4 = fragmentStore3;
                            } else {
                                fragmentStore3 = fragmentStore4;
                                i3 = i6;
                            }
                            arrayList7.add(op.mFragment);
                            i7 += i3;
                            i6 = i3;
                            fragmentStore4 = fragmentStore3;
                        } else {
                            fragmentStore2 = fragmentStore4;
                        }
                    }
                } else {
                    fragmentStore2 = fragmentStore4;
                    int i10 = 1;
                    ArrayList arrayList9 = this.mTmpAddedFragments;
                    ArrayList arrayList10 = backStackRecord.mOps;
                    int size2 = arrayList10.size() - 1;
                    while (size2 >= 0) {
                        FragmentTransaction.Op op3 = (FragmentTransaction.Op) arrayList10.get(size2);
                        int i11 = op3.mCmd;
                        if (i11 != i10) {
                            if (i11 != 3) {
                                switch (i11) {
                                    case 8:
                                        fragment = null;
                                        break;
                                    case 9:
                                        fragment = op3.mFragment;
                                        break;
                                    case 10:
                                        op3.mCurrentMaxState = op3.mOldMaxState;
                                        break;
                                }
                                size2--;
                                i10 = 1;
                            }
                            arrayList9.add(op3.mFragment);
                            size2--;
                            i10 = 1;
                        }
                        arrayList9.remove(op3.mFragment);
                        size2--;
                        i10 = 1;
                    }
                }
                if (!z2 && !backStackRecord.mAddToBackStack) {
                    z2 = false;
                } else {
                    z2 = true;
                }
                i5++;
                arrayList3 = arrayList;
                arrayList4 = arrayList2;
                fragmentStore4 = fragmentStore2;
            } else {
                FragmentStore fragmentStore6 = fragmentStore4;
                this.mTmpAddedFragments.clear();
                if (!z && this.mCurState >= 1) {
                    for (int i12 = i; i12 < i2; i12++) {
                        Iterator it = ((BackStackRecord) arrayList.get(i12)).mOps.iterator();
                        while (it.hasNext()) {
                            Fragment fragment5 = ((FragmentTransaction.Op) it.next()).mFragment;
                            if (fragment5 != null && fragment5.mFragmentManager != null) {
                                fragmentStore = fragmentStore6;
                                fragmentStore.makeActive(createOrGetFragmentStateManager(fragment5));
                            } else {
                                fragmentStore = fragmentStore6;
                            }
                            fragmentStore6 = fragmentStore;
                        }
                    }
                }
                for (int i13 = i; i13 < i2; i13++) {
                    BackStackRecord backStackRecord2 = (BackStackRecord) arrayList.get(i13);
                    if (((Boolean) arrayList2.get(i13)).booleanValue()) {
                        backStackRecord2.bumpBackStackNesting(-1);
                        ArrayList arrayList11 = backStackRecord2.mOps;
                        for (int size3 = arrayList11.size() - 1; size3 >= 0; size3--) {
                            FragmentTransaction.Op op4 = (FragmentTransaction.Op) arrayList11.get(size3);
                            Fragment fragment6 = op4.mFragment;
                            if (fragment6 != null) {
                                fragment6.mBeingSaved = backStackRecord2.mBeingSaved;
                                if (fragment6.mAnimationInfo != null) {
                                    fragment6.ensureAnimationInfo().mIsPop = true;
                                }
                                int i14 = backStackRecord2.mTransition;
                                int i15 = 8194;
                                int i16 = PeripheralConstants.ErrorCode.ERROR_PERIPHERAL_NOT_FOUND;
                                if (i14 != 4097) {
                                    if (i14 != 8194) {
                                        i15 = 8197;
                                        i16 = PeripheralConstants.ErrorCode.ERROR_PERIPHERAL_WRONG_STATE;
                                        if (i14 != 8197) {
                                            if (i14 != 4099) {
                                                if (i14 != 4100) {
                                                    i15 = 0;
                                                }
                                            } else {
                                                i16 = 4099;
                                            }
                                        }
                                    }
                                    i15 = i16;
                                }
                                if (fragment6.mAnimationInfo != null || i15 != 0) {
                                    fragment6.ensureAnimationInfo();
                                    fragment6.mAnimationInfo.mNextTransition = i15;
                                }
                                ArrayList arrayList12 = backStackRecord2.mSharedElementTargetNames;
                                ArrayList arrayList13 = backStackRecord2.mSharedElementSourceNames;
                                fragment6.ensureAnimationInfo();
                                Fragment.AnimationInfo animationInfo = fragment6.mAnimationInfo;
                                animationInfo.mSharedElementSourceNames = arrayList12;
                                animationInfo.mSharedElementTargetNames = arrayList13;
                            }
                            int i17 = op4.mCmd;
                            FragmentManager fragmentManager = backStackRecord2.mManager;
                            switch (i17) {
                                case 1:
                                    fragment6.setAnimations(op4.mEnterAnim, op4.mExitAnim, op4.mPopEnterAnim, op4.mPopExitAnim);
                                    fragmentManager.setExitAnimationOrder(fragment6, true);
                                    fragmentManager.removeFragment(fragment6);
                                    break;
                                case 2:
                                default:
                                    throw new IllegalArgumentException("Unknown cmd: " + op4.mCmd);
                                case 3:
                                    fragment6.setAnimations(op4.mEnterAnim, op4.mExitAnim, op4.mPopEnterAnim, op4.mPopExitAnim);
                                    fragmentManager.addFragment(fragment6);
                                    break;
                                case 4:
                                    fragment6.setAnimations(op4.mEnterAnim, op4.mExitAnim, op4.mPopEnterAnim, op4.mPopExitAnim);
                                    fragmentManager.getClass();
                                    if (isLoggingEnabled(2)) {
                                        Objects.toString(fragment6);
                                    }
                                    if (fragment6.mHidden) {
                                        fragment6.mHidden = false;
                                        fragment6.mHiddenChanged = !fragment6.mHiddenChanged;
                                        break;
                                    } else {
                                        break;
                                    }
                                case 5:
                                    fragment6.setAnimations(op4.mEnterAnim, op4.mExitAnim, op4.mPopEnterAnim, op4.mPopExitAnim);
                                    fragmentManager.setExitAnimationOrder(fragment6, true);
                                    if (isLoggingEnabled(2)) {
                                        Objects.toString(fragment6);
                                    }
                                    if (fragment6.mHidden) {
                                        break;
                                    } else {
                                        fragment6.mHidden = true;
                                        fragment6.mHiddenChanged = !fragment6.mHiddenChanged;
                                        fragmentManager.setVisibleRemovingFragment(fragment6);
                                        break;
                                    }
                                case 6:
                                    fragment6.setAnimations(op4.mEnterAnim, op4.mExitAnim, op4.mPopEnterAnim, op4.mPopExitAnim);
                                    fragmentManager.attachFragment(fragment6);
                                    break;
                                case 7:
                                    fragment6.setAnimations(op4.mEnterAnim, op4.mExitAnim, op4.mPopEnterAnim, op4.mPopExitAnim);
                                    fragmentManager.setExitAnimationOrder(fragment6, true);
                                    fragmentManager.detachFragment(fragment6);
                                    break;
                                case 8:
                                    fragmentManager.setPrimaryNavigationFragment(null);
                                    break;
                                case 9:
                                    fragmentManager.setPrimaryNavigationFragment(fragment6);
                                    break;
                                case 10:
                                    fragmentManager.setMaxLifecycle(fragment6, op4.mOldMaxState);
                                    break;
                            }
                        }
                    } else {
                        backStackRecord2.bumpBackStackNesting(1);
                        ArrayList arrayList14 = backStackRecord2.mOps;
                        int size4 = arrayList14.size();
                        for (int i18 = 0; i18 < size4; i18++) {
                            FragmentTransaction.Op op5 = (FragmentTransaction.Op) arrayList14.get(i18);
                            Fragment fragment7 = op5.mFragment;
                            if (fragment7 != null) {
                                fragment7.mBeingSaved = backStackRecord2.mBeingSaved;
                                if (fragment7.mAnimationInfo != null) {
                                    fragment7.ensureAnimationInfo().mIsPop = false;
                                }
                                int i19 = backStackRecord2.mTransition;
                                if (fragment7.mAnimationInfo != null || i19 != 0) {
                                    fragment7.ensureAnimationInfo();
                                    fragment7.mAnimationInfo.mNextTransition = i19;
                                }
                                ArrayList arrayList15 = backStackRecord2.mSharedElementSourceNames;
                                ArrayList arrayList16 = backStackRecord2.mSharedElementTargetNames;
                                fragment7.ensureAnimationInfo();
                                Fragment.AnimationInfo animationInfo2 = fragment7.mAnimationInfo;
                                animationInfo2.mSharedElementSourceNames = arrayList15;
                                animationInfo2.mSharedElementTargetNames = arrayList16;
                            }
                            int i20 = op5.mCmd;
                            FragmentManager fragmentManager2 = backStackRecord2.mManager;
                            switch (i20) {
                                case 1:
                                    fragment7.setAnimations(op5.mEnterAnim, op5.mExitAnim, op5.mPopEnterAnim, op5.mPopExitAnim);
                                    fragmentManager2.setExitAnimationOrder(fragment7, false);
                                    fragmentManager2.addFragment(fragment7);
                                case 2:
                                default:
                                    throw new IllegalArgumentException("Unknown cmd: " + op5.mCmd);
                                case 3:
                                    fragment7.setAnimations(op5.mEnterAnim, op5.mExitAnim, op5.mPopEnterAnim, op5.mPopExitAnim);
                                    fragmentManager2.removeFragment(fragment7);
                                case 4:
                                    fragment7.setAnimations(op5.mEnterAnim, op5.mExitAnim, op5.mPopEnterAnim, op5.mPopExitAnim);
                                    fragmentManager2.getClass();
                                    if (isLoggingEnabled(2)) {
                                        Objects.toString(fragment7);
                                    }
                                    if (!fragment7.mHidden) {
                                        fragment7.mHidden = true;
                                        fragment7.mHiddenChanged = !fragment7.mHiddenChanged;
                                        fragmentManager2.setVisibleRemovingFragment(fragment7);
                                    }
                                case 5:
                                    fragment7.setAnimations(op5.mEnterAnim, op5.mExitAnim, op5.mPopEnterAnim, op5.mPopExitAnim);
                                    fragmentManager2.setExitAnimationOrder(fragment7, false);
                                    if (isLoggingEnabled(2)) {
                                        Objects.toString(fragment7);
                                    }
                                    if (fragment7.mHidden) {
                                        fragment7.mHidden = false;
                                        fragment7.mHiddenChanged = !fragment7.mHiddenChanged;
                                    }
                                case 6:
                                    fragment7.setAnimations(op5.mEnterAnim, op5.mExitAnim, op5.mPopEnterAnim, op5.mPopExitAnim);
                                    fragmentManager2.detachFragment(fragment7);
                                case 7:
                                    fragment7.setAnimations(op5.mEnterAnim, op5.mExitAnim, op5.mPopEnterAnim, op5.mPopExitAnim);
                                    fragmentManager2.setExitAnimationOrder(fragment7, false);
                                    fragmentManager2.attachFragment(fragment7);
                                case 8:
                                    fragmentManager2.setPrimaryNavigationFragment(fragment7);
                                case 9:
                                    fragmentManager2.setPrimaryNavigationFragment(null);
                                case 10:
                                    fragmentManager2.setMaxLifecycle(fragment7, op5.mCurrentMaxState);
                            }
                        }
                    }
                }
                boolean booleanValue = ((Boolean) arrayList2.get(i2 - 1)).booleanValue();
                for (int i21 = i; i21 < i2; i21++) {
                    BackStackRecord backStackRecord3 = (BackStackRecord) arrayList.get(i21);
                    if (booleanValue) {
                        for (int size5 = backStackRecord3.mOps.size() - 1; size5 >= 0; size5--) {
                            Fragment fragment8 = ((FragmentTransaction.Op) backStackRecord3.mOps.get(size5)).mFragment;
                            if (fragment8 != null) {
                                createOrGetFragmentStateManager(fragment8).moveToExpectedState();
                            }
                        }
                    } else {
                        Iterator it2 = backStackRecord3.mOps.iterator();
                        while (it2.hasNext()) {
                            Fragment fragment9 = ((FragmentTransaction.Op) it2.next()).mFragment;
                            if (fragment9 != null) {
                                createOrGetFragmentStateManager(fragment9).moveToExpectedState();
                            }
                        }
                    }
                }
                moveToState(this.mCurState, true);
                HashSet hashSet = new HashSet();
                for (int i22 = i; i22 < i2; i22++) {
                    Iterator it3 = ((BackStackRecord) arrayList.get(i22)).mOps.iterator();
                    while (it3.hasNext()) {
                        Fragment fragment10 = ((FragmentTransaction.Op) it3.next()).mFragment;
                        if (fragment10 != null && (viewGroup = fragment10.mContainer) != null) {
                            hashSet.add(SpecialEffectsController.getOrCreateController(viewGroup, getSpecialEffectsControllerFactory()));
                        }
                    }
                }
                Iterator it4 = hashSet.iterator();
                while (it4.hasNext()) {
                    SpecialEffectsController specialEffectsController = (SpecialEffectsController) it4.next();
                    specialEffectsController.mOperationDirectionIsPop = booleanValue;
                    specialEffectsController.markPostponedState();
                    specialEffectsController.executePendingOperations();
                }
                for (int i23 = i; i23 < i2; i23++) {
                    BackStackRecord backStackRecord4 = (BackStackRecord) arrayList.get(i23);
                    if (((Boolean) arrayList2.get(i23)).booleanValue() && backStackRecord4.mIndex >= 0) {
                        backStackRecord4.mIndex = -1;
                    }
                    backStackRecord4.getClass();
                }
                return;
            }
        }
    }

    public final Fragment findActiveFragment(String str) {
        return this.mFragmentStore.findActiveFragment(str);
    }

    public final Fragment findFragmentById(int i) {
        FragmentStore fragmentStore = this.mFragmentStore;
        ArrayList arrayList = fragmentStore.mAdded;
        int size = arrayList.size();
        while (true) {
            size--;
            if (size >= 0) {
                Fragment fragment = (Fragment) arrayList.get(size);
                if (fragment != null && fragment.mFragmentId == i) {
                    return fragment;
                }
            } else {
                for (FragmentStateManager fragmentStateManager : fragmentStore.mActive.values()) {
                    if (fragmentStateManager != null) {
                        Fragment fragment2 = fragmentStateManager.mFragment;
                        if (fragment2.mFragmentId == i) {
                            return fragment2;
                        }
                    }
                }
                return null;
            }
        }
    }

    public final Fragment findFragmentByTag(String str) {
        FragmentStore fragmentStore = this.mFragmentStore;
        ArrayList arrayList = fragmentStore.mAdded;
        int size = arrayList.size();
        while (true) {
            size--;
            if (size >= 0) {
                Fragment fragment = (Fragment) arrayList.get(size);
                if (fragment != null && str.equals(fragment.mTag)) {
                    return fragment;
                }
            } else {
                for (FragmentStateManager fragmentStateManager : fragmentStore.mActive.values()) {
                    if (fragmentStateManager != null) {
                        Fragment fragment2 = fragmentStateManager.mFragment;
                        if (str.equals(fragment2.mTag)) {
                            return fragment2;
                        }
                    }
                }
                return null;
            }
        }
    }

    public final void forcePostponedTransactions() {
        Iterator it = ((HashSet) collectAllSpecialEffectsController()).iterator();
        while (it.hasNext()) {
            SpecialEffectsController specialEffectsController = (SpecialEffectsController) it.next();
            if (specialEffectsController.mIsContainerPostponed) {
                specialEffectsController.mIsContainerPostponed = false;
                specialEffectsController.executePendingOperations();
            }
        }
    }

    public final ViewGroup getFragmentContainer(Fragment fragment) {
        ViewGroup viewGroup = fragment.mContainer;
        if (viewGroup != null) {
            return viewGroup;
        }
        if (fragment.mContainerId > 0 && this.mContainer.onHasView()) {
            View onFindViewById = this.mContainer.onFindViewById(fragment.mContainerId);
            if (onFindViewById instanceof ViewGroup) {
                return (ViewGroup) onFindViewById;
            }
        }
        return null;
    }

    public final FragmentFactory getFragmentFactory() {
        FragmentFactory fragmentFactory = this.mFragmentFactory;
        if (fragmentFactory != null) {
            return fragmentFactory;
        }
        Fragment fragment = this.mParent;
        if (fragment != null) {
            return fragment.mFragmentManager.getFragmentFactory();
        }
        return this.mHostFragmentFactory;
    }

    public final AnonymousClass4 getSpecialEffectsControllerFactory() {
        Fragment fragment = this.mParent;
        if (fragment != null) {
            return fragment.mFragmentManager.getSpecialEffectsControllerFactory();
        }
        return this.mDefaultSpecialEffectsControllerFactory;
    }

    public final boolean isParentAdded() {
        Fragment fragment = this.mParent;
        if (fragment == null) {
            return true;
        }
        if (fragment.isAdded() && this.mParent.getParentFragmentManager().isParentAdded()) {
            return true;
        }
        return false;
    }

    public final boolean isStateSaved() {
        if (!this.mStateSaved && !this.mStopped) {
            return false;
        }
        return true;
    }

    public final void moveToState(int i, boolean z) {
        HashMap hashMap;
        FragmentHostCallback fragmentHostCallback;
        if (this.mHost == null && i != -1) {
            throw new IllegalStateException("No activity");
        }
        if (!z && i == this.mCurState) {
            return;
        }
        this.mCurState = i;
        FragmentStore fragmentStore = this.mFragmentStore;
        Iterator it = fragmentStore.mAdded.iterator();
        while (true) {
            boolean hasNext = it.hasNext();
            hashMap = fragmentStore.mActive;
            if (!hasNext) {
                break;
            }
            FragmentStateManager fragmentStateManager = (FragmentStateManager) hashMap.get(((Fragment) it.next()).mWho);
            if (fragmentStateManager != null) {
                fragmentStateManager.moveToExpectedState();
            }
        }
        int size = hashMap.size();
        Iterator it2 = hashMap.values().iterator();
        while (true) {
            boolean z2 = false;
            if (!it2.hasNext()) {
                break;
            }
            FragmentStateManager fragmentStateManager2 = (FragmentStateManager) it2.next();
            if (fragmentStateManager2 != null) {
                fragmentStateManager2.moveToExpectedState();
                Fragment fragment = fragmentStateManager2.mFragment;
                if (fragment.mRemoving && !fragment.isInBackStack()) {
                    z2 = true;
                }
                if (z2) {
                    if (fragment.mBeingSaved && !fragmentStore.mSavedState.containsKey(fragment.mWho)) {
                        fragmentStateManager2.saveState();
                    }
                    fragmentStore.makeInactive(fragmentStateManager2);
                }
            }
            if (size != hashMap.size()) {
                Log.d("FragmentManager", fragmentStore + "[enhanced for loop] expected Active size is " + size + ", but " + hashMap.size());
            }
        }
        startPendingDeferredFragments();
        if (this.mNeedMenuInvalidate && (fragmentHostCallback = this.mHost) != null && this.mCurState == 7) {
            fragmentHostCallback.onSupportInvalidateOptionsMenu();
            this.mNeedMenuInvalidate = false;
        }
    }

    public final void noteStateNotSaved() {
        if (this.mHost == null) {
            return;
        }
        this.mStateSaved = false;
        this.mStopped = false;
        this.mNonConfig.mIsStateSaved = false;
        for (Fragment fragment : this.mFragmentStore.getFragments()) {
            if (fragment != null) {
                fragment.mChildFragmentManager.noteStateNotSaved();
            }
        }
    }

    public final boolean popBackStackImmediate() {
        return popBackStackImmediate(-1, 0);
    }

    public final boolean popBackStackState(ArrayList arrayList, ArrayList arrayList2, String str, int i, int i2) {
        boolean z;
        if ((i2 & 1) != 0) {
            z = true;
        } else {
            z = false;
        }
        ArrayList arrayList3 = this.mBackStack;
        int i3 = -1;
        if (arrayList3 != null && !arrayList3.isEmpty()) {
            if (str == null && i < 0) {
                i3 = z ? 0 : (-1) + this.mBackStack.size();
            } else {
                int size = this.mBackStack.size() - 1;
                while (size >= 0) {
                    BackStackRecord backStackRecord = (BackStackRecord) this.mBackStack.get(size);
                    if ((str != null && str.equals(backStackRecord.mName)) || (i >= 0 && i == backStackRecord.mIndex)) {
                        break;
                    }
                    size--;
                }
                if (size >= 0) {
                    if (z) {
                        while (size > 0) {
                            int i4 = size - 1;
                            BackStackRecord backStackRecord2 = (BackStackRecord) this.mBackStack.get(i4);
                            if ((str == null || !str.equals(backStackRecord2.mName)) && (i < 0 || i != backStackRecord2.mIndex)) {
                                break;
                            }
                            size = i4;
                        }
                    } else if (size != this.mBackStack.size() - 1) {
                        size++;
                    }
                }
                i3 = size;
            }
        }
        if (i3 < 0) {
            return false;
        }
        for (int size2 = this.mBackStack.size() - 1; size2 >= i3; size2--) {
            arrayList.add((BackStackRecord) this.mBackStack.remove(size2));
            arrayList2.add(Boolean.TRUE);
        }
        return true;
    }

    public final void removeFragment(Fragment fragment) {
        if (isLoggingEnabled(2)) {
            Objects.toString(fragment);
        }
        boolean z = !fragment.isInBackStack();
        if (!fragment.mDetached || z) {
            FragmentStore fragmentStore = this.mFragmentStore;
            synchronized (fragmentStore.mAdded) {
                fragmentStore.mAdded.remove(fragment);
            }
            fragment.mAdded = false;
            if (isMenuAvailable(fragment)) {
                this.mNeedMenuInvalidate = true;
            }
            fragment.mRemoving = true;
            setVisibleRemovingFragment(fragment);
        }
    }

    public final void removeRedundantOperationsAndExecute(ArrayList arrayList, ArrayList arrayList2) {
        if (arrayList.isEmpty()) {
            return;
        }
        if (arrayList.size() == arrayList2.size()) {
            int size = arrayList.size();
            int i = 0;
            int i2 = 0;
            while (i < size) {
                if (!((BackStackRecord) arrayList.get(i)).mReorderingAllowed) {
                    if (i2 != i) {
                        executeOpsTogether(arrayList, arrayList2, i2, i);
                    }
                    i2 = i + 1;
                    if (((Boolean) arrayList2.get(i)).booleanValue()) {
                        while (i2 < size && ((Boolean) arrayList2.get(i2)).booleanValue() && !((BackStackRecord) arrayList.get(i2)).mReorderingAllowed) {
                            i2++;
                        }
                    }
                    executeOpsTogether(arrayList, arrayList2, i, i2);
                    i = i2 - 1;
                }
                i++;
            }
            if (i2 != size) {
                executeOpsTogether(arrayList, arrayList2, i2, size);
                return;
            }
            return;
        }
        throw new IllegalStateException("Internal error with the back stack records");
    }

    public final void restoreSaveStateInternal(Parcelable parcelable) {
        FragmentLifecycleCallbacksDispatcher fragmentLifecycleCallbacksDispatcher;
        int i;
        boolean z;
        FragmentStateManager fragmentStateManager;
        Bundle bundle;
        Bundle bundle2;
        Bundle bundle3 = (Bundle) parcelable;
        for (String str : bundle3.keySet()) {
            if (str.startsWith("result_") && (bundle2 = bundle3.getBundle(str)) != null) {
                bundle2.setClassLoader(this.mHost.mContext.getClassLoader());
                this.mResults.put(str.substring(7), bundle2);
            }
        }
        ArrayList arrayList = new ArrayList();
        for (String str2 : bundle3.keySet()) {
            if (str2.startsWith("fragment_") && (bundle = bundle3.getBundle(str2)) != null) {
                bundle.setClassLoader(this.mHost.mContext.getClassLoader());
                arrayList.add((FragmentState) bundle.getParcelable("state"));
            }
        }
        FragmentStore fragmentStore = this.mFragmentStore;
        HashMap hashMap = fragmentStore.mSavedState;
        hashMap.clear();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            FragmentState fragmentState = (FragmentState) it.next();
            hashMap.put(fragmentState.mWho, fragmentState);
        }
        FragmentManagerState fragmentManagerState = (FragmentManagerState) bundle3.getParcelable("state");
        if (fragmentManagerState == null) {
            return;
        }
        HashMap hashMap2 = fragmentStore.mActive;
        hashMap2.clear();
        Log.d("FragmentManager", fragmentStore + " clear Active Fragments: " + hashMap2 + ", mActive size: " + hashMap2.size());
        Iterator it2 = fragmentManagerState.mActive.iterator();
        while (true) {
            boolean hasNext = it2.hasNext();
            fragmentLifecycleCallbacksDispatcher = this.mLifecycleCallbacksDispatcher;
            if (!hasNext) {
                break;
            }
            FragmentState savedState = fragmentStore.setSavedState((String) it2.next(), null);
            if (savedState != null) {
                Fragment fragment = (Fragment) this.mNonConfig.mRetainedFragments.get(savedState.mWho);
                if (fragment != null) {
                    if (isLoggingEnabled(2)) {
                        fragment.toString();
                    }
                    fragmentStateManager = new FragmentStateManager(fragmentLifecycleCallbacksDispatcher, fragmentStore, fragment, savedState);
                } else {
                    fragmentStateManager = new FragmentStateManager(this.mLifecycleCallbacksDispatcher, this.mFragmentStore, this.mHost.mContext.getClassLoader(), getFragmentFactory(), savedState);
                }
                Fragment fragment2 = fragmentStateManager.mFragment;
                fragment2.mFragmentManager = this;
                if (isLoggingEnabled(2)) {
                    fragment2.toString();
                }
                fragmentStateManager.restoreState(this.mHost.mContext.getClassLoader());
                fragmentStore.makeActive(fragmentStateManager);
                fragmentStateManager.mFragmentManagerState = this.mCurState;
            }
        }
        FragmentManagerViewModel fragmentManagerViewModel = this.mNonConfig;
        fragmentManagerViewModel.getClass();
        Iterator it3 = new ArrayList(fragmentManagerViewModel.mRetainedFragments.values()).iterator();
        while (true) {
            i = 0;
            if (!it3.hasNext()) {
                break;
            }
            Fragment fragment3 = (Fragment) it3.next();
            if (hashMap2.get(fragment3.mWho) != null) {
                i = 1;
            }
            if (i == 0) {
                if (isLoggingEnabled(2)) {
                    fragment3.toString();
                    Objects.toString(fragmentManagerState.mActive);
                }
                this.mNonConfig.removeRetainedFragment(fragment3);
                fragment3.mFragmentManager = this;
                FragmentStateManager fragmentStateManager2 = new FragmentStateManager(fragmentLifecycleCallbacksDispatcher, fragmentStore, fragment3);
                fragmentStateManager2.mFragmentManagerState = 1;
                fragmentStateManager2.moveToExpectedState();
                fragment3.mRemoving = true;
                fragmentStateManager2.moveToExpectedState();
            }
        }
        ArrayList<String> arrayList2 = fragmentManagerState.mAdded;
        fragmentStore.mAdded.clear();
        if (arrayList2 != null) {
            for (String str3 : arrayList2) {
                Fragment findActiveFragment = fragmentStore.findActiveFragment(str3);
                if (findActiveFragment != null) {
                    if (isLoggingEnabled(2)) {
                        findActiveFragment.toString();
                    }
                    fragmentStore.addFragment(findActiveFragment);
                } else {
                    throw new IllegalStateException(PathParser$$ExternalSyntheticOutline0.m("No instantiated fragment for (", str3, ")"));
                }
            }
        }
        if (fragmentManagerState.mBackStack != null) {
            this.mBackStack = new ArrayList(fragmentManagerState.mBackStack.length);
            int i2 = 0;
            while (true) {
                BackStackRecordState[] backStackRecordStateArr = fragmentManagerState.mBackStack;
                if (i2 >= backStackRecordStateArr.length) {
                    break;
                }
                BackStackRecordState backStackRecordState = backStackRecordStateArr[i2];
                backStackRecordState.getClass();
                BackStackRecord backStackRecord = new BackStackRecord(this);
                int i3 = 0;
                int i4 = 0;
                while (i3 < backStackRecordState.mOps.length) {
                    FragmentTransaction.Op op = new FragmentTransaction.Op();
                    int i5 = i3 + 1;
                    op.mCmd = backStackRecordState.mOps[i3];
                    if (isLoggingEnabled(2)) {
                        Objects.toString(backStackRecord);
                        int i6 = backStackRecordState.mOps[i5];
                    }
                    op.mOldMaxState = Lifecycle.State.values()[backStackRecordState.mOldMaxLifecycleStates[i4]];
                    op.mCurrentMaxState = Lifecycle.State.values()[backStackRecordState.mCurrentMaxLifecycleStates[i4]];
                    int[] iArr = backStackRecordState.mOps;
                    int i7 = i5 + 1;
                    if (iArr[i5] != 0) {
                        z = true;
                    } else {
                        z = false;
                    }
                    op.mFromExpandedOp = z;
                    int i8 = i7 + 1;
                    int i9 = iArr[i7];
                    op.mEnterAnim = i9;
                    int i10 = i8 + 1;
                    int i11 = iArr[i8];
                    op.mExitAnim = i11;
                    int i12 = i10 + 1;
                    int i13 = iArr[i10];
                    op.mPopEnterAnim = i13;
                    int i14 = iArr[i12];
                    op.mPopExitAnim = i14;
                    backStackRecord.mEnterAnim = i9;
                    backStackRecord.mExitAnim = i11;
                    backStackRecord.mPopEnterAnim = i13;
                    backStackRecord.mPopExitAnim = i14;
                    backStackRecord.addOp(op);
                    i4++;
                    i3 = i12 + 1;
                }
                backStackRecord.mTransition = backStackRecordState.mTransition;
                backStackRecord.mName = backStackRecordState.mName;
                backStackRecord.mAddToBackStack = true;
                backStackRecord.mBreadCrumbTitleRes = backStackRecordState.mBreadCrumbTitleRes;
                backStackRecord.mBreadCrumbTitleText = backStackRecordState.mBreadCrumbTitleText;
                backStackRecord.mBreadCrumbShortTitleRes = backStackRecordState.mBreadCrumbShortTitleRes;
                backStackRecord.mBreadCrumbShortTitleText = backStackRecordState.mBreadCrumbShortTitleText;
                backStackRecord.mSharedElementSourceNames = backStackRecordState.mSharedElementSourceNames;
                backStackRecord.mSharedElementTargetNames = backStackRecordState.mSharedElementTargetNames;
                backStackRecord.mReorderingAllowed = backStackRecordState.mReorderingAllowed;
                backStackRecord.mIndex = backStackRecordState.mIndex;
                for (int i15 = 0; i15 < backStackRecordState.mFragmentWhos.size(); i15++) {
                    String str4 = (String) backStackRecordState.mFragmentWhos.get(i15);
                    if (str4 != null) {
                        ((FragmentTransaction.Op) backStackRecord.mOps.get(i15)).mFragment = findActiveFragment(str4);
                    }
                }
                backStackRecord.bumpBackStackNesting(1);
                if (isLoggingEnabled(2)) {
                    backStackRecord.toString();
                    PrintWriter printWriter = new PrintWriter(new LogWriter("FragmentManager"));
                    backStackRecord.dump("  ", printWriter, false);
                    printWriter.close();
                }
                this.mBackStack.add(backStackRecord);
                i2++;
            }
        } else {
            this.mBackStack = null;
        }
        this.mBackStackIndex.set(fragmentManagerState.mBackStackIndex);
        String str5 = fragmentManagerState.mPrimaryNavActiveWho;
        if (str5 != null) {
            Fragment findActiveFragment2 = findActiveFragment(str5);
            this.mPrimaryNav = findActiveFragment2;
            dispatchParentPrimaryNavigationFragmentChanged(findActiveFragment2);
        }
        ArrayList arrayList3 = fragmentManagerState.mBackStackStateKeys;
        if (arrayList3 != null) {
            while (i < arrayList3.size()) {
                this.mBackStackStates.put((String) arrayList3.get(i), (BackStackState) fragmentManagerState.mBackStackStates.get(i));
                i++;
            }
        }
        this.mLaunchedFragments = new ArrayDeque(fragmentManagerState.mLaunchedFragments);
    }

    public final Bundle saveAllStateInternal() {
        BackStackRecordState[] backStackRecordStateArr;
        ArrayList arrayList;
        int size;
        Bundle bundle = new Bundle();
        forcePostponedTransactions();
        Iterator it = ((HashSet) collectAllSpecialEffectsController()).iterator();
        while (it.hasNext()) {
            ((SpecialEffectsController) it.next()).forceCompleteAllOperations();
        }
        execPendingActions(true);
        this.mStateSaved = true;
        this.mNonConfig.mIsStateSaved = true;
        FragmentStore fragmentStore = this.mFragmentStore;
        fragmentStore.getClass();
        HashMap hashMap = fragmentStore.mActive;
        ArrayList arrayList2 = new ArrayList(hashMap.size());
        for (FragmentStateManager fragmentStateManager : hashMap.values()) {
            if (fragmentStateManager != null) {
                fragmentStateManager.saveState();
                Fragment fragment = fragmentStateManager.mFragment;
                arrayList2.add(fragment.mWho);
                if (isLoggingEnabled(2)) {
                    fragment.toString();
                    Objects.toString(fragment.mSavedFragmentState);
                }
            }
        }
        FragmentStore fragmentStore2 = this.mFragmentStore;
        fragmentStore2.getClass();
        ArrayList arrayList3 = new ArrayList(fragmentStore2.mSavedState.values());
        if (!arrayList3.isEmpty()) {
            FragmentStore fragmentStore3 = this.mFragmentStore;
            synchronized (fragmentStore3.mAdded) {
                backStackRecordStateArr = null;
                if (fragmentStore3.mAdded.isEmpty()) {
                    arrayList = null;
                } else {
                    arrayList = new ArrayList(fragmentStore3.mAdded.size());
                    Iterator it2 = fragmentStore3.mAdded.iterator();
                    while (it2.hasNext()) {
                        Fragment fragment2 = (Fragment) it2.next();
                        arrayList.add(fragment2.mWho);
                        if (isLoggingEnabled(2)) {
                            fragment2.toString();
                        }
                    }
                }
            }
            ArrayList arrayList4 = this.mBackStack;
            if (arrayList4 != null && (size = arrayList4.size()) > 0) {
                backStackRecordStateArr = new BackStackRecordState[size];
                for (int i = 0; i < size; i++) {
                    backStackRecordStateArr[i] = new BackStackRecordState((BackStackRecord) this.mBackStack.get(i));
                    if (isLoggingEnabled(2)) {
                        Objects.toString(this.mBackStack.get(i));
                    }
                }
            }
            FragmentManagerState fragmentManagerState = new FragmentManagerState();
            fragmentManagerState.mActive = arrayList2;
            fragmentManagerState.mAdded = arrayList;
            fragmentManagerState.mBackStack = backStackRecordStateArr;
            fragmentManagerState.mBackStackIndex = this.mBackStackIndex.get();
            Fragment fragment3 = this.mPrimaryNav;
            if (fragment3 != null) {
                fragmentManagerState.mPrimaryNavActiveWho = fragment3.mWho;
            }
            fragmentManagerState.mBackStackStateKeys.addAll(this.mBackStackStates.keySet());
            fragmentManagerState.mBackStackStates.addAll(this.mBackStackStates.values());
            fragmentManagerState.mLaunchedFragments = new ArrayList(this.mLaunchedFragments);
            bundle.putParcelable("state", fragmentManagerState);
            for (String str : this.mResults.keySet()) {
                bundle.putBundle(KeyAttributes$$ExternalSyntheticOutline0.m("result_", str), (Bundle) this.mResults.get(str));
            }
            Iterator it3 = arrayList3.iterator();
            while (it3.hasNext()) {
                FragmentState fragmentState = (FragmentState) it3.next();
                Bundle bundle2 = new Bundle();
                bundle2.putParcelable("state", fragmentState);
                bundle.putBundle("fragment_" + fragmentState.mWho, bundle2);
            }
        }
        return bundle;
    }

    public final void scheduleCommit() {
        synchronized (this.mPendingActions) {
            boolean z = true;
            if (this.mPendingActions.size() != 1) {
                z = false;
            }
            if (z) {
                this.mHost.mHandler.removeCallbacks(this.mExecCommit);
                this.mHost.mHandler.post(this.mExecCommit);
                updateOnBackPressedCallbackEnabled();
            }
        }
    }

    public final void setExitAnimationOrder(Fragment fragment, boolean z) {
        ViewGroup fragmentContainer = getFragmentContainer(fragment);
        if (fragmentContainer != null && (fragmentContainer instanceof FragmentContainerView)) {
            ((FragmentContainerView) fragmentContainer).drawDisappearingViewsFirst = !z;
        }
    }

    public final void setMaxLifecycle(Fragment fragment, Lifecycle.State state) {
        if (fragment.equals(findActiveFragment(fragment.mWho)) && (fragment.mHost == null || fragment.mFragmentManager == this)) {
            fragment.mMaxState = state;
            return;
        }
        throw new IllegalArgumentException("Fragment " + fragment + " is not an active fragment of FragmentManager " + this);
    }

    public final void setPrimaryNavigationFragment(Fragment fragment) {
        if (fragment != null && (!fragment.equals(findActiveFragment(fragment.mWho)) || (fragment.mHost != null && fragment.mFragmentManager != this))) {
            throw new IllegalArgumentException("Fragment " + fragment + " is not an active fragment of FragmentManager " + this);
        }
        Fragment fragment2 = this.mPrimaryNav;
        this.mPrimaryNav = fragment;
        dispatchParentPrimaryNavigationFragmentChanged(fragment2);
        dispatchParentPrimaryNavigationFragmentChanged(this.mPrimaryNav);
    }

    public final void setVisibleRemovingFragment(Fragment fragment) {
        int i;
        int i2;
        int i3;
        int i4;
        ViewGroup fragmentContainer = getFragmentContainer(fragment);
        if (fragmentContainer != null) {
            Fragment.AnimationInfo animationInfo = fragment.mAnimationInfo;
            boolean z = false;
            if (animationInfo == null) {
                i = 0;
            } else {
                i = animationInfo.mEnterAnim;
            }
            if (animationInfo == null) {
                i2 = 0;
            } else {
                i2 = animationInfo.mExitAnim;
            }
            int i5 = i2 + i;
            if (animationInfo == null) {
                i3 = 0;
            } else {
                i3 = animationInfo.mPopEnterAnim;
            }
            int i6 = i3 + i5;
            if (animationInfo == null) {
                i4 = 0;
            } else {
                i4 = animationInfo.mPopExitAnim;
            }
            if (i4 + i6 > 0) {
                if (fragmentContainer.getTag(R.id.visible_removing_fragment_view_tag) == null) {
                    fragmentContainer.setTag(R.id.visible_removing_fragment_view_tag, fragment);
                }
                Fragment fragment2 = (Fragment) fragmentContainer.getTag(R.id.visible_removing_fragment_view_tag);
                Fragment.AnimationInfo animationInfo2 = fragment.mAnimationInfo;
                if (animationInfo2 != null) {
                    z = animationInfo2.mIsPop;
                }
                if (fragment2.mAnimationInfo != null) {
                    fragment2.ensureAnimationInfo().mIsPop = z;
                }
            }
        }
    }

    public final void startPendingDeferredFragments() {
        Iterator it = ((ArrayList) this.mFragmentStore.getActiveFragmentStateManagers()).iterator();
        while (it.hasNext()) {
            FragmentStateManager fragmentStateManager = (FragmentStateManager) it.next();
            Fragment fragment = fragmentStateManager.mFragment;
            if (fragment.mDeferStart) {
                if (this.mExecutingActions) {
                    this.mHavePendingDeferredStart = true;
                } else {
                    fragment.mDeferStart = false;
                    fragmentStateManager.moveToExpectedState();
                }
            }
        }
    }

    public final void throwException(RuntimeException runtimeException) {
        Log.e("FragmentManager", runtimeException.getMessage());
        Log.e("FragmentManager", "Activity state:");
        PrintWriter printWriter = new PrintWriter(new LogWriter("FragmentManager"));
        FragmentHostCallback fragmentHostCallback = this.mHost;
        if (fragmentHostCallback != null) {
            try {
                fragmentHostCallback.onDump(printWriter, new String[0]);
                throw runtimeException;
            } catch (Exception e) {
                Log.e("FragmentManager", "Failed dumping state", e);
                throw runtimeException;
            }
        }
        try {
            dump("  ", null, printWriter, new String[0]);
            throw runtimeException;
        } catch (Exception e2) {
            Log.e("FragmentManager", "Failed dumping state", e2);
            throw runtimeException;
        }
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("FragmentManager{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" in ");
        Fragment fragment = this.mParent;
        if (fragment != null) {
            sb.append(fragment.getClass().getSimpleName());
            sb.append("{");
            sb.append(Integer.toHexString(System.identityHashCode(this.mParent)));
            sb.append("}");
        } else {
            FragmentHostCallback fragmentHostCallback = this.mHost;
            if (fragmentHostCallback != null) {
                sb.append(fragmentHostCallback.getClass().getSimpleName());
                sb.append("{");
                sb.append(Integer.toHexString(System.identityHashCode(this.mHost)));
                sb.append("}");
            } else {
                sb.append("null");
            }
        }
        sb.append("}}");
        return sb.toString();
    }

    public final void updateOnBackPressedCallbackEnabled() {
        int i;
        synchronized (this.mPendingActions) {
            try {
                boolean z = true;
                if (!this.mPendingActions.isEmpty()) {
                    AnonymousClass1 anonymousClass1 = this.mOnBackPressedCallback;
                    anonymousClass1.isEnabled = true;
                    Consumer consumer = anonymousClass1.enabledConsumer;
                    if (consumer != null) {
                        consumer.accept(Boolean.valueOf(anonymousClass1.isEnabled));
                    }
                    return;
                }
                AnonymousClass1 anonymousClass12 = this.mOnBackPressedCallback;
                ArrayList arrayList = this.mBackStack;
                if (arrayList != null) {
                    i = arrayList.size();
                } else {
                    i = 0;
                }
                if (i <= 0 || !isPrimaryNavigation(this.mParent)) {
                    z = false;
                }
                anonymousClass12.isEnabled = z;
                Consumer consumer2 = anonymousClass12.enabledConsumer;
                if (consumer2 != null) {
                    consumer2.accept(Boolean.valueOf(anonymousClass12.isEnabled));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final boolean popBackStackImmediate(int i, int i2) {
        execPendingActions(false);
        ensureExecReady(true);
        Fragment fragment = this.mPrimaryNav;
        if (fragment != null && i < 0 && fragment.getChildFragmentManager().popBackStackImmediate()) {
            return true;
        }
        boolean popBackStackState = popBackStackState(this.mTmpRecords, this.mTmpIsPop, null, i, i2);
        if (popBackStackState) {
            this.mExecutingActions = true;
            try {
                removeRedundantOperationsAndExecute(this.mTmpRecords, this.mTmpIsPop);
            } finally {
                cleanupExec();
            }
        }
        updateOnBackPressedCallbackEnabled();
        doPendingDeferredStart();
        this.mFragmentStore.mActive.values().removeAll(Collections.singleton(null));
        return popBackStackState;
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class LaunchedFragmentInfo implements Parcelable {
        public static final Parcelable.Creator<LaunchedFragmentInfo> CREATOR = new Parcelable.Creator() { // from class: androidx.fragment.app.FragmentManager.LaunchedFragmentInfo.1
            @Override // android.os.Parcelable.Creator
            public final Object createFromParcel(Parcel parcel) {
                return new LaunchedFragmentInfo(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public final Object[] newArray(int i) {
                return new LaunchedFragmentInfo[i];
            }
        };
        public final int mRequestCode;
        public final String mWho;

        public LaunchedFragmentInfo(String str, int i) {
            this.mWho = str;
            this.mRequestCode = i;
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            parcel.writeString(this.mWho);
            parcel.writeInt(this.mRequestCode);
        }

        public LaunchedFragmentInfo(Parcel parcel) {
            this.mWho = parcel.readString();
            this.mRequestCode = parcel.readInt();
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public abstract class FragmentLifecycleCallbacks {
        public void onFragmentViewCreated(FragmentManager fragmentManager, Fragment fragment, View view) {
        }
    }
}
