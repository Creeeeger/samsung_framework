package androidx.mediarouter.app;

import android.R;
import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.Drawable;
import android.os.AsyncTask;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.View;
import androidx.appcompat.app.AppCompatDelegateImpl$$ExternalSyntheticOutline0;
import androidx.appcompat.app.AppCompatDialog;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.fragment.app.BackStackRecord;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManagerImpl;
import androidx.mediarouter.media.MediaRouteSelector;
import androidx.mediarouter.media.MediaRouter;
import androidx.mediarouter.media.MediaRouterParams;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public class MediaRouteButton extends View {
    public static ConnectivityReceiver sConnectivityReceiver;
    public boolean mAlwaysVisible;
    public boolean mAttachedToWindow;
    public final ColorStateList mButtonTint;
    public final MediaRouterCallback mCallback;
    public boolean mCheatSheetEnabled;
    public int mConnectionState;
    public MediaRouteDialogFactory mDialogFactory;
    public boolean mIsFixedIcon;
    public int mLastConnectionState;
    public final int mMinHeight;
    public final int mMinWidth;
    public Drawable mRemoteIndicator;
    public RemoteIndicatorLoader mRemoteIndicatorLoader;
    public int mRemoteIndicatorResIdToLoad;
    public final MediaRouter mRouter;
    public MediaRouteSelector mSelector;
    public int mVisibility;
    public static final SparseArray sRemoteIndicatorCache = new SparseArray(2);
    public static final int[] CHECKED_STATE_SET = {R.attr.state_checked};
    public static final int[] CHECKABLE_STATE_SET = {R.attr.state_checkable};

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class ConnectivityReceiver extends BroadcastReceiver {
        public final Context mContext;
        public boolean mIsConnected = true;
        public final List mButtons = new ArrayList();

        public ConnectivityReceiver(Context context) {
            this.mContext = context;
        }

        @Override // android.content.BroadcastReceiver
        public final void onReceive(Context context, Intent intent) {
            boolean z;
            if ("android.net.conn.CONNECTIVITY_CHANGE".equals(intent.getAction()) && this.mIsConnected != (!intent.getBooleanExtra("noConnectivity", false))) {
                this.mIsConnected = z;
                Iterator it = ((ArrayList) this.mButtons).iterator();
                while (it.hasNext()) {
                    ((MediaRouteButton) it.next()).refreshVisibility();
                }
            }
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class MediaRouterCallback extends MediaRouter.Callback {
        public MediaRouterCallback() {
        }

        @Override // androidx.mediarouter.media.MediaRouter.Callback
        public final void onProviderAdded(MediaRouter mediaRouter) {
            MediaRouteButton.this.refreshRoute();
        }

        @Override // androidx.mediarouter.media.MediaRouter.Callback
        public final void onProviderChanged(MediaRouter mediaRouter) {
            MediaRouteButton.this.refreshRoute();
        }

        @Override // androidx.mediarouter.media.MediaRouter.Callback
        public final void onProviderRemoved(MediaRouter mediaRouter) {
            MediaRouteButton.this.refreshRoute();
        }

        @Override // androidx.mediarouter.media.MediaRouter.Callback
        public final void onRouteAdded(MediaRouter mediaRouter) {
            MediaRouteButton.this.refreshRoute();
        }

        @Override // androidx.mediarouter.media.MediaRouter.Callback
        public final void onRouteChanged(MediaRouter mediaRouter, MediaRouter.RouteInfo routeInfo) {
            MediaRouteButton.this.refreshRoute();
        }

        @Override // androidx.mediarouter.media.MediaRouter.Callback
        public final void onRouteRemoved(MediaRouter mediaRouter) {
            MediaRouteButton.this.refreshRoute();
        }

        @Override // androidx.mediarouter.media.MediaRouter.Callback
        public final void onRouteSelected(MediaRouter.RouteInfo routeInfo) {
            MediaRouteButton.this.refreshRoute();
        }

        @Override // androidx.mediarouter.media.MediaRouter.Callback
        public final void onRouteUnselected() {
            MediaRouteButton.this.refreshRoute();
        }

        @Override // androidx.mediarouter.media.MediaRouter.Callback
        public final void onRouterParamsChanged(MediaRouterParams mediaRouterParams) {
            boolean z;
            if (mediaRouterParams != null) {
                z = mediaRouterParams.mExtras.getBoolean("androidx.mediarouter.media.MediaRouterParams.FIXED_CAST_ICON");
            } else {
                z = false;
            }
            MediaRouteButton mediaRouteButton = MediaRouteButton.this;
            if (mediaRouteButton.mIsFixedIcon != z) {
                mediaRouteButton.mIsFixedIcon = z;
                mediaRouteButton.refreshDrawableState();
            }
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class RemoteIndicatorLoader extends AsyncTask {
        public final Context mContext;
        public final int mResId;

        public RemoteIndicatorLoader(int i, Context context) {
            this.mResId = i;
            this.mContext = context;
        }

        @Override // android.os.AsyncTask
        public final Object doInBackground(Object[] objArr) {
            if (((Drawable.ConstantState) MediaRouteButton.sRemoteIndicatorCache.get(this.mResId)) == null) {
                return AppCompatResources.getDrawable(this.mResId, this.mContext);
            }
            return null;
        }

        @Override // android.os.AsyncTask
        public final void onCancelled(Object obj) {
            Drawable drawable = (Drawable) obj;
            if (drawable != null) {
                MediaRouteButton.sRemoteIndicatorCache.put(this.mResId, drawable.getConstantState());
            }
            MediaRouteButton.this.mRemoteIndicatorLoader = null;
        }

        @Override // android.os.AsyncTask
        public final void onPostExecute(Object obj) {
            Drawable drawable = (Drawable) obj;
            if (drawable != null) {
                MediaRouteButton.sRemoteIndicatorCache.put(this.mResId, drawable.getConstantState());
                MediaRouteButton.this.mRemoteIndicatorLoader = null;
            } else {
                Drawable.ConstantState constantState = (Drawable.ConstantState) MediaRouteButton.sRemoteIndicatorCache.get(this.mResId);
                if (constantState != null) {
                    drawable = constantState.newDrawable();
                }
                MediaRouteButton.this.mRemoteIndicatorLoader = null;
            }
            MediaRouteButton.this.setRemoteIndicatorDrawableInternal(drawable);
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public MediaRouteButton(android.content.Context r10, android.util.AttributeSet r11, int r12) {
        /*
            Method dump skipped, instructions count: 239
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.mediarouter.app.MediaRouteButton.<init>(android.content.Context, android.util.AttributeSet, int):void");
    }

    @Override // android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        if (this.mRemoteIndicator != null) {
            this.mRemoteIndicator.setState(getDrawableState());
            if (this.mRemoteIndicator.getCurrent() instanceof AnimationDrawable) {
                AnimationDrawable animationDrawable = (AnimationDrawable) this.mRemoteIndicator.getCurrent();
                int i = this.mConnectionState;
                if (i != 1 && this.mLastConnectionState == i) {
                    if (i == 2 && !animationDrawable.isRunning()) {
                        animationDrawable.selectDrawable(animationDrawable.getNumberOfFrames() - 1);
                    }
                } else if (!animationDrawable.isRunning()) {
                    animationDrawable.start();
                }
            }
            invalidate();
        }
        this.mLastConnectionState = this.mConnectionState;
    }

    @Override // android.view.View
    public final void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.mRemoteIndicator;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
    }

    public final void loadRemoteIndicatorIfNeeded() {
        if (this.mRemoteIndicatorResIdToLoad > 0) {
            RemoteIndicatorLoader remoteIndicatorLoader = this.mRemoteIndicatorLoader;
            if (remoteIndicatorLoader != null) {
                remoteIndicatorLoader.cancel(false);
            }
            RemoteIndicatorLoader remoteIndicatorLoader2 = new RemoteIndicatorLoader(this.mRemoteIndicatorResIdToLoad, getContext());
            this.mRemoteIndicatorLoader = remoteIndicatorLoader2;
            this.mRemoteIndicatorResIdToLoad = 0;
            remoteIndicatorLoader2.executeOnExecutor(AsyncTask.SERIAL_EXECUTOR, new Void[0]);
        }
    }

    @Override // android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (isInEditMode()) {
            return;
        }
        this.mAttachedToWindow = true;
        if (!this.mSelector.isEmpty()) {
            this.mRouter.addCallback(this.mSelector, this.mCallback, 0);
        }
        refreshRoute();
        ConnectivityReceiver connectivityReceiver = sConnectivityReceiver;
        if (((ArrayList) connectivityReceiver.mButtons).size() == 0) {
            connectivityReceiver.mContext.registerReceiver(connectivityReceiver, AppCompatDelegateImpl$$ExternalSyntheticOutline0.m("android.net.conn.CONNECTIVITY_CHANGE"));
        }
        ((ArrayList) connectivityReceiver.mButtons).add(this);
    }

    @Override // android.view.View
    public final int[] onCreateDrawableState(int i) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i + 1);
        if (this.mRouter == null) {
            return onCreateDrawableState;
        }
        if (this.mIsFixedIcon) {
            return onCreateDrawableState;
        }
        int i2 = this.mConnectionState;
        if (i2 != 1) {
            if (i2 == 2) {
                View.mergeDrawableStates(onCreateDrawableState, CHECKED_STATE_SET);
            }
        } else {
            View.mergeDrawableStates(onCreateDrawableState, CHECKABLE_STATE_SET);
        }
        return onCreateDrawableState;
    }

    @Override // android.view.View
    public final void onDetachedFromWindow() {
        if (!isInEditMode()) {
            this.mAttachedToWindow = false;
            if (!this.mSelector.isEmpty()) {
                this.mRouter.removeCallback(this.mCallback);
            }
            ConnectivityReceiver connectivityReceiver = sConnectivityReceiver;
            ((ArrayList) connectivityReceiver.mButtons).remove(this);
            if (((ArrayList) connectivityReceiver.mButtons).size() == 0) {
                connectivityReceiver.mContext.unregisterReceiver(connectivityReceiver);
            }
        }
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.mRemoteIndicator != null) {
            int paddingLeft = getPaddingLeft();
            int width = getWidth() - getPaddingRight();
            int paddingTop = getPaddingTop();
            int height = getHeight() - getPaddingBottom();
            int intrinsicWidth = this.mRemoteIndicator.getIntrinsicWidth();
            int intrinsicHeight = this.mRemoteIndicator.getIntrinsicHeight();
            int i = (((width - paddingLeft) - intrinsicWidth) / 2) + paddingLeft;
            int i2 = (((height - paddingTop) - intrinsicHeight) / 2) + paddingTop;
            this.mRemoteIndicator.setBounds(i, i2, intrinsicWidth + i, intrinsicHeight + i2);
            this.mRemoteIndicator.draw(canvas);
        }
    }

    @Override // android.view.View
    public final void onMeasure(int i, int i2) {
        int i3;
        int size = View.MeasureSpec.getSize(i);
        int size2 = View.MeasureSpec.getSize(i2);
        int mode = View.MeasureSpec.getMode(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        int i4 = this.mMinWidth;
        Drawable drawable = this.mRemoteIndicator;
        int i5 = 0;
        if (drawable != null) {
            i3 = getPaddingRight() + getPaddingLeft() + drawable.getIntrinsicWidth();
        } else {
            i3 = 0;
        }
        int max = Math.max(i4, i3);
        int i6 = this.mMinHeight;
        Drawable drawable2 = this.mRemoteIndicator;
        if (drawable2 != null) {
            i5 = getPaddingBottom() + getPaddingTop() + drawable2.getIntrinsicHeight();
        }
        int max2 = Math.max(i6, i5);
        if (mode != Integer.MIN_VALUE) {
            if (mode != 1073741824) {
                size = max;
            }
        } else {
            size = Math.min(size, max);
        }
        if (mode2 != Integer.MIN_VALUE) {
            if (mode2 != 1073741824) {
                size2 = max2;
            }
        } else {
            size2 = Math.min(size2, max2);
        }
        setMeasuredDimension(size, size2);
    }

    @Override // android.view.View
    public final boolean performClick() {
        boolean z;
        MediaRouteSelector mediaRouteSelector;
        Activity activity;
        FragmentManagerImpl fragmentManagerImpl;
        boolean performClick = super.performClick();
        if (!performClick) {
            playSoundEffect(0);
        }
        loadRemoteIndicatorIfNeeded();
        if (this.mAttachedToWindow) {
            this.mRouter.getClass();
            MediaRouter.checkCallingThread();
            MediaRouter.getGlobalRouter();
            Context context = getContext();
            while (true) {
                mediaRouteSelector = null;
                if (context instanceof ContextWrapper) {
                    if (context instanceof Activity) {
                        activity = (Activity) context;
                        break;
                    }
                    context = ((ContextWrapper) context).getBaseContext();
                } else {
                    activity = null;
                    break;
                }
            }
            if (activity instanceof FragmentActivity) {
                fragmentManagerImpl = ((FragmentActivity) activity).getSupportFragmentManager();
            } else {
                fragmentManagerImpl = null;
            }
            if (fragmentManagerImpl != null) {
                this.mRouter.getClass();
                if (MediaRouter.getSelectedRoute().isDefaultOrBluetooth()) {
                    if (fragmentManagerImpl.findFragmentByTag("android.support.v7.mediarouter:MediaRouteChooserDialogFragment") != null) {
                        Log.w("MediaRouteButton", "showDialog(): Route chooser dialog already showing!");
                    } else {
                        this.mDialogFactory.getClass();
                        MediaRouteChooserDialogFragment mediaRouteChooserDialogFragment = new MediaRouteChooserDialogFragment();
                        MediaRouteSelector mediaRouteSelector2 = this.mSelector;
                        if (mediaRouteSelector2 != null) {
                            mediaRouteChooserDialogFragment.ensureRouteSelector();
                            if (!mediaRouteChooserDialogFragment.mSelector.equals(mediaRouteSelector2)) {
                                mediaRouteChooserDialogFragment.mSelector = mediaRouteSelector2;
                                Bundle bundle = mediaRouteChooserDialogFragment.mArguments;
                                if (bundle == null) {
                                    bundle = new Bundle();
                                }
                                bundle.putBundle("selector", mediaRouteSelector2.mBundle);
                                mediaRouteChooserDialogFragment.setArguments(bundle);
                                AppCompatDialog appCompatDialog = mediaRouteChooserDialogFragment.mDialog;
                                if (appCompatDialog != null) {
                                    if (mediaRouteChooserDialogFragment.mUseDynamicGroup) {
                                        ((MediaRouteDynamicChooserDialog) appCompatDialog).setRouteSelector(mediaRouteSelector2);
                                    } else {
                                        ((MediaRouteChooserDialog) appCompatDialog).setRouteSelector(mediaRouteSelector2);
                                    }
                                }
                            }
                            BackStackRecord backStackRecord = new BackStackRecord(fragmentManagerImpl);
                            backStackRecord.doAddOp(0, mediaRouteChooserDialogFragment, "android.support.v7.mediarouter:MediaRouteChooserDialogFragment", 1);
                            backStackRecord.commitAllowingStateLoss();
                            z = true;
                        } else {
                            throw new IllegalArgumentException("selector must not be null");
                        }
                    }
                } else if (fragmentManagerImpl.findFragmentByTag("android.support.v7.mediarouter:MediaRouteControllerDialogFragment") != null) {
                    Log.w("MediaRouteButton", "showDialog(): Route controller dialog already showing!");
                } else {
                    this.mDialogFactory.getClass();
                    MediaRouteControllerDialogFragment mediaRouteControllerDialogFragment = new MediaRouteControllerDialogFragment();
                    MediaRouteSelector mediaRouteSelector3 = this.mSelector;
                    if (mediaRouteSelector3 != null) {
                        if (mediaRouteControllerDialogFragment.mSelector == null) {
                            Bundle bundle2 = mediaRouteControllerDialogFragment.mArguments;
                            if (bundle2 != null) {
                                Bundle bundle3 = bundle2.getBundle("selector");
                                if (bundle3 != null) {
                                    mediaRouteSelector = new MediaRouteSelector(bundle3, null);
                                } else {
                                    MediaRouteSelector mediaRouteSelector4 = MediaRouteSelector.EMPTY;
                                }
                                mediaRouteControllerDialogFragment.mSelector = mediaRouteSelector;
                            }
                            if (mediaRouteControllerDialogFragment.mSelector == null) {
                                mediaRouteControllerDialogFragment.mSelector = MediaRouteSelector.EMPTY;
                            }
                        }
                        if (!mediaRouteControllerDialogFragment.mSelector.equals(mediaRouteSelector3)) {
                            mediaRouteControllerDialogFragment.mSelector = mediaRouteSelector3;
                            Bundle bundle4 = mediaRouteControllerDialogFragment.mArguments;
                            if (bundle4 == null) {
                                bundle4 = new Bundle();
                            }
                            bundle4.putBundle("selector", mediaRouteSelector3.mBundle);
                            mediaRouteControllerDialogFragment.setArguments(bundle4);
                            AppCompatDialog appCompatDialog2 = mediaRouteControllerDialogFragment.mDialog;
                            if (appCompatDialog2 != null && mediaRouteControllerDialogFragment.mUseDynamicGroup) {
                                ((MediaRouteDynamicControllerDialog) appCompatDialog2).setRouteSelector(mediaRouteSelector3);
                            }
                        }
                        BackStackRecord backStackRecord2 = new BackStackRecord(fragmentManagerImpl);
                        backStackRecord2.doAddOp(0, mediaRouteControllerDialogFragment, "android.support.v7.mediarouter:MediaRouteControllerDialogFragment", 1);
                        backStackRecord2.commitAllowingStateLoss();
                        z = true;
                    } else {
                        throw new IllegalArgumentException("selector must not be null");
                    }
                }
                if (z && !performClick) {
                    return false;
                }
                return true;
            }
            throw new IllegalStateException("The activity must be a subclass of FragmentActivity");
        }
        z = false;
        if (z) {
        }
        return true;
    }

    public final void refreshRoute() {
        int i;
        this.mRouter.getClass();
        MediaRouter.RouteInfo selectedRoute = MediaRouter.getSelectedRoute();
        boolean z = true;
        boolean z2 = !selectedRoute.isDefaultOrBluetooth();
        if (z2) {
            i = selectedRoute.mConnectionState;
        } else {
            i = 0;
        }
        if (this.mConnectionState != i) {
            this.mConnectionState = i;
            updateContentDescription();
            refreshDrawableState();
        }
        if (i == 1) {
            loadRemoteIndicatorIfNeeded();
        }
        if (this.mAttachedToWindow) {
            if (!this.mAlwaysVisible && !z2) {
                MediaRouter mediaRouter = this.mRouter;
                MediaRouteSelector mediaRouteSelector = this.mSelector;
                mediaRouter.getClass();
                if (!MediaRouter.isRouteAvailable(mediaRouteSelector)) {
                    z = false;
                }
            }
            setEnabled(z);
        }
    }

    public final void refreshVisibility() {
        boolean z;
        int i = this.mVisibility;
        if (i == 0 && !this.mAlwaysVisible && !sConnectivityReceiver.mIsConnected) {
            i = 4;
        }
        super.setVisibility(i);
        Drawable drawable = this.mRemoteIndicator;
        if (drawable != null) {
            if (getVisibility() == 0) {
                z = true;
            } else {
                z = false;
            }
            drawable.setVisible(z, false);
        }
    }

    public final void setRemoteIndicatorDrawableInternal(Drawable drawable) {
        boolean z;
        RemoteIndicatorLoader remoteIndicatorLoader = this.mRemoteIndicatorLoader;
        if (remoteIndicatorLoader != null) {
            remoteIndicatorLoader.cancel(false);
        }
        Drawable drawable2 = this.mRemoteIndicator;
        if (drawable2 != null) {
            drawable2.setCallback(null);
            unscheduleDrawable(this.mRemoteIndicator);
        }
        if (drawable != null) {
            if (this.mButtonTint != null) {
                drawable = drawable.mutate();
                drawable.setTintList(this.mButtonTint);
            }
            drawable.setCallback(this);
            drawable.setState(getDrawableState());
            if (getVisibility() == 0) {
                z = true;
            } else {
                z = false;
            }
            drawable.setVisible(z, false);
        }
        this.mRemoteIndicator = drawable;
        refreshDrawableState();
    }

    @Override // android.view.View
    public final void setVisibility(int i) {
        this.mVisibility = i;
        refreshVisibility();
    }

    public final void updateContentDescription() {
        int i;
        int i2 = this.mConnectionState;
        if (i2 != 1) {
            if (i2 != 2) {
                i = com.android.systemui.R.string.mr_cast_button_disconnected;
            } else {
                i = com.android.systemui.R.string.mr_cast_button_connected;
            }
        } else {
            i = com.android.systemui.R.string.mr_cast_button_connecting;
        }
        String string = getContext().getString(i);
        setContentDescription(string);
        if (!this.mCheatSheetEnabled || TextUtils.isEmpty(string)) {
            string = null;
        }
        setTooltipText(string);
    }

    @Override // android.view.View
    public final boolean verifyDrawable(Drawable drawable) {
        if (!super.verifyDrawable(drawable) && drawable != this.mRemoteIndicator) {
            return false;
        }
        return true;
    }

    public MediaRouteButton(Context context) {
        this(context, null);
    }

    public MediaRouteButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, com.android.systemui.R.attr.mediaRouteButtonStyle);
    }
}
