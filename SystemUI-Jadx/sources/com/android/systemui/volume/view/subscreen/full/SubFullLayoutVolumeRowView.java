package com.android.systemui.volume.view.subscreen.full;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.Toast;
import androidx.dynamicanimation.animation.DynamicAnimation;
import androidx.dynamicanimation.animation.FloatValueHolder;
import androidx.dynamicanimation.animation.SpringAnimation;
import androidx.dynamicanimation.animation.SpringForce;
import com.android.settingslib.bluetooth.BluetoothUtils;
import com.android.settingslib.bluetooth.LocalBluetoothManager;
import com.android.systemui.R;
import com.android.systemui.volume.store.StoreInteractor;
import com.android.systemui.volume.util.HandlerWrapper;
import com.android.systemui.volume.util.ViewUtil;
import com.android.systemui.volume.util.ViewVisibilityUtil;
import com.android.systemui.volume.view.ViewLevelConverter;
import com.samsung.systemui.splugins.extensions.VolumePanelStateExt;
import com.samsung.systemui.splugins.volume.VolumeObserver;
import com.samsung.systemui.splugins.volume.VolumePanelAction;
import com.samsung.systemui.splugins.volume.VolumePanelRow;
import com.samsung.systemui.splugins.volume.VolumePanelState;
import com.samsung.systemui.splugins.volume.VolumePanelValues;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class SubFullLayoutVolumeRowView extends FrameLayout implements VolumeObserver<VolumePanelState> {
    public ImageView bluetoothDeviceIcon;
    public int earProtectLevel;
    public HandlerWrapper handlerWrapper;
    public SubFullLayoutVolumeIcon icon;
    public boolean iconClickable;
    public boolean isAODEnabled;
    public boolean isDualViewEnabled;
    public boolean isInExpandView;
    public String label;
    public final Lazy progressBarSpring$delegate;
    public final SubFullLayoutVolumeRowView$recheckCallback$1 recheckCallback;
    public SubFullLayoutVolumeSeekBar seekBar;
    public ViewGroup seekBarBackground;
    public boolean startProgress;
    public final StoreInteractor storeInteractor;
    public int stream;
    public SpringAnimation touchDownAnimation;
    public boolean touchDownIcon;
    public SpringAnimation touchUpAnimation;
    public SubFullLayoutVolumePanelMotion volumePanelMotion;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public abstract /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[VolumePanelState.StateType.values().length];
            try {
                iArr[VolumePanelState.StateType.STATE_UPDATE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[VolumePanelState.StateType.STATE_SET_STREAM_VOLUME.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[VolumePanelState.StateType.STATE_UPDATE_PROGRESS_BAR.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[VolumePanelState.StateType.STATE_UPDATE_PROGRESS_BAR_LATER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[VolumePanelState.StateType.STATE_STOP_SLIDER_TRACKING.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[VolumePanelState.StateType.STATE_DISMISS_VOLUME_PANEL_COMPLETED.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[VolumePanelState.StateType.STATE_SEEKBAR_START_PROGRESS.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[VolumePanelState.StateType.STATE_SEEKBAR_TOUCH_DOWN.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr[VolumePanelState.StateType.STATE_SEEKBAR_TOUCH_UP.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                iArr[VolumePanelState.StateType.STATE_SMART_VIEW_SEEKBAR_TOUCHED.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX WARN: Type inference failed for: r2v2, types: [com.android.systemui.volume.view.subscreen.full.SubFullLayoutVolumeRowView$recheckCallback$1] */
    public SubFullLayoutVolumeRowView(Context context) {
        super(context);
        this.storeInteractor = new StoreInteractor(this, null);
        this.recheckCallback = new Runnable() { // from class: com.android.systemui.volume.view.subscreen.full.SubFullLayoutVolumeRowView$recheckCallback$1
            @Override // java.lang.Runnable
            public final void run() {
                StoreInteractor storeInteractor = SubFullLayoutVolumeRowView.this.storeInteractor;
                VolumePanelAction.Builder stream = new VolumePanelAction.Builder(VolumePanelAction.ActionType.ACTION_CHECK_IF_NEED_TO_SET_PROGRESS).stream(SubFullLayoutVolumeRowView.this.stream);
                SubFullLayoutVolumeSeekBar subFullLayoutVolumeSeekBar = SubFullLayoutVolumeRowView.this.seekBar;
                if (subFullLayoutVolumeSeekBar == null) {
                    subFullLayoutVolumeSeekBar = null;
                }
                storeInteractor.sendAction(stream.progress(subFullLayoutVolumeSeekBar.getProgress()).build(), false);
            }
        };
        this.progressBarSpring$delegate = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.android.systemui.volume.view.subscreen.full.SubFullLayoutVolumeRowView$progressBarSpring$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                SpringAnimation springAnimation = new SpringAnimation(new FloatValueHolder());
                final SubFullLayoutVolumeRowView subFullLayoutVolumeRowView = SubFullLayoutVolumeRowView.this;
                SpringForce springForce = new SpringForce();
                springForce.setDampingRatio(1.0f);
                springForce.setStiffness(450.0f);
                springAnimation.mSpring = springForce;
                springAnimation.mVelocity = 0.0f;
                SubFullLayoutVolumeSeekBar subFullLayoutVolumeSeekBar = subFullLayoutVolumeRowView.seekBar;
                if (subFullLayoutVolumeSeekBar == null) {
                    subFullLayoutVolumeSeekBar = null;
                }
                springAnimation.setStartValue(subFullLayoutVolumeSeekBar.getProgress());
                springAnimation.setMinimumVisibleChange(1.0f);
                springAnimation.addUpdateListener(new DynamicAnimation.OnAnimationUpdateListener() { // from class: com.android.systemui.volume.view.subscreen.full.SubFullLayoutVolumeRowView$progressBarSpring$2$1$2
                    @Override // androidx.dynamicanimation.animation.DynamicAnimation.OnAnimationUpdateListener
                    public final void onAnimationUpdate(float f, float f2) {
                        SubFullLayoutVolumeSeekBar subFullLayoutVolumeSeekBar2 = SubFullLayoutVolumeRowView.this.seekBar;
                        if (subFullLayoutVolumeSeekBar2 == null) {
                            subFullLayoutVolumeSeekBar2 = null;
                        }
                        subFullLayoutVolumeSeekBar2.setProgress((int) f);
                    }
                });
                return springAnimation;
            }
        });
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action != 0) {
            if (action == 1) {
                if (isIconClicked(motionEvent.getRawX(), motionEvent.getRawY())) {
                    this.storeInteractor.sendAction(new VolumePanelAction.Builder(VolumePanelAction.ActionType.ACTION_VOLUME_ICON_CLICKED).stream(this.stream).isFromOutside(true).build(), false);
                }
                this.touchDownIcon = false;
                this.startProgress = false;
            }
        } else {
            ViewUtil viewUtil = ViewUtil.INSTANCE;
            SubFullLayoutVolumeIcon subFullLayoutVolumeIcon = this.icon;
            ViewGroup viewGroup = null;
            if (subFullLayoutVolumeIcon == null) {
                subFullLayoutVolumeIcon = null;
            }
            float rawX = motionEvent.getRawX();
            float rawY = motionEvent.getRawY();
            viewUtil.getClass();
            if (ViewUtil.isTouched(subFullLayoutVolumeIcon, rawX, rawY)) {
                this.touchDownIcon = true;
                ViewGroup viewGroup2 = this.seekBarBackground;
                if (viewGroup2 != null) {
                    viewGroup = viewGroup2;
                }
                if (!ViewUtil.isTouched(viewGroup, motionEvent.getRawX(), motionEvent.getRawY())) {
                    return true;
                }
            } else if (VolumePanelValues.isSmartView(this.stream)) {
                this.storeInteractor.sendAction(new VolumePanelAction.Builder(VolumePanelAction.ActionType.ACTION_SMART_VIEW_SEEKBAR_TOUCHED).isFromOutside(true).stream(this.stream).build(), false);
            }
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    /* JADX WARN: Removed duplicated region for block: B:102:0x034e  */
    /* JADX WARN: Removed duplicated region for block: B:105:0x0379  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x03a2  */
    /* JADX WARN: Removed duplicated region for block: B:115:0x03b8  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x0433  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x0442  */
    /* JADX WARN: Removed duplicated region for block: B:134:0x03f4  */
    /* JADX WARN: Removed duplicated region for block: B:144:0x038d  */
    /* JADX WARN: Removed duplicated region for block: B:148:0x035d  */
    /* JADX WARN: Removed duplicated region for block: B:149:0x0326  */
    /* JADX WARN: Removed duplicated region for block: B:153:0x02c6  */
    /* JADX WARN: Removed duplicated region for block: B:160:0x00fe  */
    /* JADX WARN: Removed duplicated region for block: B:161:0x0104 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:16:0x00ac  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x00b8  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00c4  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00d0  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x01a6  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x024c  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0257  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0284  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x02bd  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x02e2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void initialize(com.android.systemui.volume.store.VolumePanelStore r4, com.android.systemui.volume.util.HandlerWrapper r5, com.samsung.systemui.splugins.volume.VolumePanelRow r6, com.samsung.systemui.splugins.volume.VolumePanelState r7, com.android.systemui.volume.view.subscreen.full.SubFullLayoutVolumePanelMotion r8, boolean r9) {
        /*
            Method dump skipped, instructions count: 1101
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.volume.view.subscreen.full.SubFullLayoutVolumeRowView.initialize(com.android.systemui.volume.store.VolumePanelStore, com.android.systemui.volume.util.HandlerWrapper, com.samsung.systemui.splugins.volume.VolumePanelRow, com.samsung.systemui.splugins.volume.VolumePanelState, com.android.systemui.volume.view.subscreen.full.SubFullLayoutVolumePanelMotion, boolean):void");
    }

    public final boolean isIconClicked(float f, float f2) {
        if (!this.startProgress && this.touchDownIcon) {
            SubFullLayoutVolumeIcon subFullLayoutVolumeIcon = this.icon;
            SubFullLayoutVolumeIcon subFullLayoutVolumeIcon2 = null;
            if (subFullLayoutVolumeIcon == null) {
                subFullLayoutVolumeIcon = null;
            }
            if (subFullLayoutVolumeIcon.isEnabled() && this.iconClickable) {
                ViewUtil viewUtil = ViewUtil.INSTANCE;
                SubFullLayoutVolumeIcon subFullLayoutVolumeIcon3 = this.icon;
                if (subFullLayoutVolumeIcon3 != null) {
                    subFullLayoutVolumeIcon2 = subFullLayoutVolumeIcon3;
                }
                viewUtil.getClass();
                if (ViewUtil.isTouched(subFullLayoutVolumeIcon2, f, f2)) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // com.samsung.systemui.splugins.volume.VolumeObserver
    public final void onChanged(VolumePanelState volumePanelState) {
        int earProtectLevel;
        VolumePanelState volumePanelState2 = volumePanelState;
        boolean z = false;
        SubFullLayoutVolumeSeekBar subFullLayoutVolumeSeekBar = null;
        SpringAnimation springAnimation = null;
        SpringAnimation springAnimation2 = null;
        SubFullLayoutVolumeSeekBar subFullLayoutVolumeSeekBar2 = null;
        HandlerWrapper handlerWrapper = null;
        HandlerWrapper handlerWrapper2 = null;
        switch (WhenMappings.$EnumSwitchMapping$0[volumePanelState2.getStateType().ordinal()]) {
            case 1:
                VolumePanelStateExt volumePanelStateExt = VolumePanelStateExt.INSTANCE;
                if (volumePanelStateExt.isRowVisible(volumePanelState2, this.stream)) {
                    VolumePanelRow findRow = volumePanelStateExt.findRow(volumePanelState2, this.stream);
                    if (findRow != null && (earProtectLevel = findRow.getEarProtectLevel()) != this.earProtectLevel) {
                        this.earProtectLevel = earProtectLevel;
                        SubFullLayoutVolumeSeekBar subFullLayoutVolumeSeekBar3 = this.seekBar;
                        if (subFullLayoutVolumeSeekBar3 == null) {
                            subFullLayoutVolumeSeekBar3 = null;
                        }
                        subFullLayoutVolumeSeekBar3.getClass();
                    }
                    VolumePanelRow findRow2 = volumePanelStateExt.findRow(volumePanelState2, this.stream);
                    if (findRow2 != null) {
                        SubFullLayoutVolumeSeekBar subFullLayoutVolumeSeekBar4 = this.seekBar;
                        if (subFullLayoutVolumeSeekBar4 == null) {
                            subFullLayoutVolumeSeekBar4 = null;
                        }
                        subFullLayoutVolumeSeekBar4.setEnabled(findRow2.isSliderEnabled());
                    }
                    VolumePanelRow findRow3 = volumePanelStateExt.findRow(volumePanelState2, this.stream);
                    if (findRow3 != null) {
                        updateContentDescription(volumePanelState2, findRow3);
                    }
                    VolumePanelRow findRow4 = volumePanelStateExt.findRow(volumePanelState2, this.stream);
                    if (findRow4 != null) {
                        updateBluetoothDeviceIcon(findRow4);
                    }
                    StoreInteractor storeInteractor = this.storeInteractor;
                    VolumePanelAction.Builder stream = new VolumePanelAction.Builder(VolumePanelAction.ActionType.ACTION_CHECK_IF_NEED_TO_SET_PROGRESS).stream(this.stream);
                    SubFullLayoutVolumeSeekBar subFullLayoutVolumeSeekBar5 = this.seekBar;
                    if (subFullLayoutVolumeSeekBar5 != null) {
                        subFullLayoutVolumeSeekBar = subFullLayoutVolumeSeekBar5;
                    }
                    storeInteractor.sendAction(stream.progress(subFullLayoutVolumeSeekBar.getProgress()).build(), true);
                    return;
                }
                return;
            case 2:
                if (this.isAODEnabled && this.stream == volumePanelState2.getStream()) {
                    updateProgress(volumePanelState2);
                    return;
                }
                return;
            case 3:
                if (this.stream == volumePanelState2.getStream()) {
                    updateProgress(volumePanelState2);
                    return;
                }
                return;
            case 4:
                if (this.stream == volumePanelState2.getStream()) {
                    HandlerWrapper handlerWrapper3 = this.handlerWrapper;
                    if (handlerWrapper3 == null) {
                        handlerWrapper3 = null;
                    }
                    handlerWrapper3.remove(this.recheckCallback);
                    HandlerWrapper handlerWrapper4 = this.handlerWrapper;
                    if (handlerWrapper4 != null) {
                        handlerWrapper2 = handlerWrapper4;
                    }
                    handlerWrapper2.postDelayed(1000L, this.recheckCallback);
                    return;
                }
                return;
            case 5:
                if (this.stream == volumePanelState2.getStream()) {
                    StoreInteractor storeInteractor2 = this.storeInteractor;
                    VolumePanelAction.Builder stream2 = new VolumePanelAction.Builder(VolumePanelAction.ActionType.ACTION_UPDATE_PROGRESS_BAR).stream(this.stream);
                    SubFullLayoutVolumeSeekBar subFullLayoutVolumeSeekBar6 = this.seekBar;
                    if (subFullLayoutVolumeSeekBar6 == null) {
                        subFullLayoutVolumeSeekBar6 = null;
                    }
                    storeInteractor2.sendAction(stream2.progress(subFullLayoutVolumeSeekBar6.getProgress()).build(), true);
                    HandlerWrapper handlerWrapper5 = this.handlerWrapper;
                    if (handlerWrapper5 == null) {
                        handlerWrapper5 = null;
                    }
                    handlerWrapper5.remove(this.recheckCallback);
                    HandlerWrapper handlerWrapper6 = this.handlerWrapper;
                    if (handlerWrapper6 != null) {
                        handlerWrapper = handlerWrapper6;
                    }
                    handlerWrapper.postDelayed(1000L, this.recheckCallback);
                    return;
                }
                return;
            case 6:
                this.storeInteractor.dispose();
                SubFullLayoutVolumeSeekBar subFullLayoutVolumeSeekBar7 = this.seekBar;
                if (subFullLayoutVolumeSeekBar7 != null) {
                    subFullLayoutVolumeSeekBar2 = subFullLayoutVolumeSeekBar7;
                }
                subFullLayoutVolumeSeekBar2.storeInteractor.dispose();
                return;
            case 7:
                if (volumePanelState2.getStream() == this.stream) {
                    this.startProgress = true;
                    return;
                }
                return;
            case 8:
                if ((this.isAODEnabled || this.isDualViewEnabled || volumePanelState2.isExpanded()) && volumePanelState2.getStream() == this.stream) {
                    z = true;
                }
                if (z) {
                    SubFullLayoutVolumePanelMotion subFullLayoutVolumePanelMotion = this.volumePanelMotion;
                    if (subFullLayoutVolumePanelMotion == null) {
                        subFullLayoutVolumePanelMotion = null;
                    }
                    SpringAnimation springAnimation3 = this.touchDownAnimation;
                    if (springAnimation3 == null) {
                        springAnimation3 = null;
                    }
                    SpringAnimation springAnimation4 = this.touchUpAnimation;
                    if (springAnimation4 != null) {
                        springAnimation2 = springAnimation4;
                    }
                    subFullLayoutVolumePanelMotion.getClass();
                    SubFullLayoutVolumePanelMotion.startSeekBarTouchDownAnimation(springAnimation3, springAnimation2, true);
                    return;
                }
                return;
            case 9:
                if ((this.isAODEnabled || this.isDualViewEnabled || volumePanelState2.isExpanded()) && volumePanelState2.getStream() == this.stream) {
                    z = true;
                }
                if (z) {
                    SubFullLayoutVolumePanelMotion subFullLayoutVolumePanelMotion2 = this.volumePanelMotion;
                    if (subFullLayoutVolumePanelMotion2 == null) {
                        subFullLayoutVolumePanelMotion2 = null;
                    }
                    SpringAnimation springAnimation5 = this.touchUpAnimation;
                    if (springAnimation5 == null) {
                        springAnimation5 = null;
                    }
                    SpringAnimation springAnimation6 = this.touchDownAnimation;
                    if (springAnimation6 != null) {
                        springAnimation = springAnimation6;
                    }
                    subFullLayoutVolumePanelMotion2.getClass();
                    SubFullLayoutVolumePanelMotion.startSeekBarTouchUpAnimation(springAnimation5, springAnimation);
                    return;
                }
                return;
            case 10:
                if (this.stream == volumePanelState2.getStream()) {
                    SubFullLayoutVolumeSeekBar subFullLayoutVolumeSeekBar8 = this.seekBar;
                    if (subFullLayoutVolumeSeekBar8 == null) {
                        subFullLayoutVolumeSeekBar8 = null;
                    }
                    subFullLayoutVolumeSeekBar8.setFocusable(false);
                    SubFullLayoutVolumeSeekBar subFullLayoutVolumeSeekBar9 = this.seekBar;
                    if (subFullLayoutVolumeSeekBar9 == null) {
                        subFullLayoutVolumeSeekBar9 = null;
                    }
                    subFullLayoutVolumeSeekBar9.setFocusableInTouchMode(false);
                    SubFullLayoutVolumeSeekBar subFullLayoutVolumeSeekBar10 = this.seekBar;
                    if (subFullLayoutVolumeSeekBar10 == null) {
                        subFullLayoutVolumeSeekBar10 = null;
                    }
                    subFullLayoutVolumeSeekBar10.clearFocus();
                    SubFullLayoutVolumeSeekBar subFullLayoutVolumeSeekBar11 = this.seekBar;
                    if (subFullLayoutVolumeSeekBar11 == null) {
                        subFullLayoutVolumeSeekBar11 = null;
                    }
                    subFullLayoutVolumeSeekBar11.setBackground(null);
                    List<VolumePanelRow> volumeRowList = volumePanelState2.getVolumeRowList();
                    ArrayList arrayList = new ArrayList();
                    for (Object obj : volumeRowList) {
                        if (VolumePanelValues.isSmartView(((VolumePanelRow) obj).getStreamType())) {
                            arrayList.add(obj);
                        }
                    }
                    ArrayList arrayList2 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList, 10));
                    Iterator it = arrayList.iterator();
                    while (it.hasNext()) {
                        arrayList2.add(((VolumePanelRow) it.next()).getSmartViewLabel());
                    }
                    String str = (String) CollectionsKt___CollectionsKt.firstOrNull((List) arrayList2);
                    if (str == null) {
                        str = "";
                    }
                    Toast.makeText(getContext(), getContext().getString(R.string.volume_use_your_phone_volume_smart_view, str), 0).show();
                    return;
                }
                return;
            default:
                return;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.storeInteractor.dispose();
        SubFullLayoutVolumeSeekBar subFullLayoutVolumeSeekBar = this.seekBar;
        if (subFullLayoutVolumeSeekBar == null) {
            subFullLayoutVolumeSeekBar = null;
        }
        subFullLayoutVolumeSeekBar.storeInteractor.dispose();
    }

    public final void updateBluetoothDeviceIcon(VolumePanelRow volumePanelRow) {
        Drawable drawable;
        ImageView imageView = null;
        if (volumePanelRow.getIconType() != 2 && volumePanelRow.getIconType() != 10 && volumePanelRow.getIconType() != 13 && volumePanelRow.getIconType() != 12) {
            ViewVisibilityUtil viewVisibilityUtil = ViewVisibilityUtil.INSTANCE;
            ImageView imageView2 = this.bluetoothDeviceIcon;
            if (imageView2 != null) {
                imageView = imageView2;
            }
            viewVisibilityUtil.getClass();
            ViewVisibilityUtil.setGone(imageView);
            return;
        }
        String dualBtDeviceAddress = volumePanelRow.getDualBtDeviceAddress();
        if (this.isDualViewEnabled && !TextUtils.isEmpty(dualBtDeviceAddress)) {
            int iconType = volumePanelRow.getIconType();
            if (iconType != 10) {
                if (iconType != 13) {
                    Context context = getContext();
                    BluetoothUtils.AnonymousClass2 anonymousClass2 = BluetoothUtils.mOnInitCallback;
                    drawable = BluetoothUtils.getHostOverlayIconDrawable(context, LocalBluetoothManager.getInstance(context, anonymousClass2).mCachedDeviceManager.findDevice(LocalBluetoothManager.getInstance(context, anonymousClass2).mLocalAdapter.mAdapter.getRemoteDevice(dualBtDeviceAddress)));
                } else {
                    drawable = getContext().getResources().getDrawable(R.drawable.tw_ic_audio_buds3, null);
                }
            } else {
                drawable = getContext().getResources().getDrawable(R.drawable.tw_ic_audio_buds, null);
            }
            ImageView imageView3 = this.bluetoothDeviceIcon;
            if (imageView3 == null) {
                imageView3 = null;
            }
            imageView3.setImageDrawable(drawable);
            ViewVisibilityUtil viewVisibilityUtil2 = ViewVisibilityUtil.INSTANCE;
            ImageView imageView4 = this.bluetoothDeviceIcon;
            if (imageView4 != null) {
                imageView = imageView4;
            }
            viewVisibilityUtil2.getClass();
            imageView.setVisibility(0);
        }
    }

    public final void updateContentDescription(VolumePanelState volumePanelState, VolumePanelRow volumePanelRow) {
        String string;
        int iconType = volumePanelRow.getIconType();
        if (this.stream == 2) {
            if (iconType == 0) {
                string = getContext().getString(R.string.volume_icon_content_description_ringtone_to_sound);
            } else if (volumePanelState.isHasVibrator()) {
                string = getContext().getString(R.string.volume_icon_content_description_ringtone_to_vib);
            } else {
                string = getContext().getString(R.string.volume_icon_content_description_ringtone_to_mute);
            }
        } else if (iconType != 1 && !volumePanelRow.isMuted() && volumePanelRow.getRealLevel() != 0) {
            string = getContext().getString(R.string.volume_icon_content_description_to_mute, this.label);
        } else {
            string = getContext().getString(R.string.volume_icon_content_description_to_unmute, this.label);
        }
        SubFullLayoutVolumeIcon subFullLayoutVolumeIcon = this.icon;
        if (subFullLayoutVolumeIcon == null) {
            subFullLayoutVolumeIcon = null;
        }
        subFullLayoutVolumeIcon.setContentDescription(string);
    }

    public final void updateProgress(VolumePanelState volumePanelState) {
        VolumePanelRow findRow = VolumePanelStateExt.INSTANCE.findRow(volumePanelState, this.stream);
        if (findRow != null) {
            int viewRealLevel = ViewLevelConverter.viewRealLevel(findRow);
            SubFullLayoutVolumeSeekBar subFullLayoutVolumeSeekBar = null;
            if (findRow.isVisible()) {
                SpringAnimation springAnimation = (SpringAnimation) this.progressBarSpring$delegate.getValue();
                SubFullLayoutVolumeSeekBar subFullLayoutVolumeSeekBar2 = this.seekBar;
                if (subFullLayoutVolumeSeekBar2 != null) {
                    subFullLayoutVolumeSeekBar = subFullLayoutVolumeSeekBar2;
                }
                springAnimation.setStartValue(subFullLayoutVolumeSeekBar.getProgress());
                ((SpringAnimation) this.progressBarSpring$delegate.getValue()).animateToFinalPosition(viewRealLevel);
                return;
            }
            ((SpringAnimation) this.progressBarSpring$delegate.getValue()).cancel();
            SubFullLayoutVolumeSeekBar subFullLayoutVolumeSeekBar3 = this.seekBar;
            if (subFullLayoutVolumeSeekBar3 != null) {
                subFullLayoutVolumeSeekBar = subFullLayoutVolumeSeekBar3;
            }
            subFullLayoutVolumeSeekBar.setProgress(viewRealLevel);
        }
    }

    /* JADX WARN: Type inference failed for: r1v2, types: [com.android.systemui.volume.view.subscreen.full.SubFullLayoutVolumeRowView$recheckCallback$1] */
    public SubFullLayoutVolumeRowView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.storeInteractor = new StoreInteractor(this, null);
        this.recheckCallback = new Runnable() { // from class: com.android.systemui.volume.view.subscreen.full.SubFullLayoutVolumeRowView$recheckCallback$1
            @Override // java.lang.Runnable
            public final void run() {
                StoreInteractor storeInteractor = SubFullLayoutVolumeRowView.this.storeInteractor;
                VolumePanelAction.Builder stream = new VolumePanelAction.Builder(VolumePanelAction.ActionType.ACTION_CHECK_IF_NEED_TO_SET_PROGRESS).stream(SubFullLayoutVolumeRowView.this.stream);
                SubFullLayoutVolumeSeekBar subFullLayoutVolumeSeekBar = SubFullLayoutVolumeRowView.this.seekBar;
                if (subFullLayoutVolumeSeekBar == null) {
                    subFullLayoutVolumeSeekBar = null;
                }
                storeInteractor.sendAction(stream.progress(subFullLayoutVolumeSeekBar.getProgress()).build(), false);
            }
        };
        this.progressBarSpring$delegate = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.android.systemui.volume.view.subscreen.full.SubFullLayoutVolumeRowView$progressBarSpring$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                SpringAnimation springAnimation = new SpringAnimation(new FloatValueHolder());
                final SubFullLayoutVolumeRowView subFullLayoutVolumeRowView = SubFullLayoutVolumeRowView.this;
                SpringForce springForce = new SpringForce();
                springForce.setDampingRatio(1.0f);
                springForce.setStiffness(450.0f);
                springAnimation.mSpring = springForce;
                springAnimation.mVelocity = 0.0f;
                SubFullLayoutVolumeSeekBar subFullLayoutVolumeSeekBar = subFullLayoutVolumeRowView.seekBar;
                if (subFullLayoutVolumeSeekBar == null) {
                    subFullLayoutVolumeSeekBar = null;
                }
                springAnimation.setStartValue(subFullLayoutVolumeSeekBar.getProgress());
                springAnimation.setMinimumVisibleChange(1.0f);
                springAnimation.addUpdateListener(new DynamicAnimation.OnAnimationUpdateListener() { // from class: com.android.systemui.volume.view.subscreen.full.SubFullLayoutVolumeRowView$progressBarSpring$2$1$2
                    @Override // androidx.dynamicanimation.animation.DynamicAnimation.OnAnimationUpdateListener
                    public final void onAnimationUpdate(float f, float f2) {
                        SubFullLayoutVolumeSeekBar subFullLayoutVolumeSeekBar2 = SubFullLayoutVolumeRowView.this.seekBar;
                        if (subFullLayoutVolumeSeekBar2 == null) {
                            subFullLayoutVolumeSeekBar2 = null;
                        }
                        subFullLayoutVolumeSeekBar2.setProgress((int) f);
                    }
                });
                return springAnimation;
            }
        });
    }
}
