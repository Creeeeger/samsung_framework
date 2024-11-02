package com.android.systemui.volume.view.subscreen.simple;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.app.Presentation;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.Resources;
import android.graphics.Point;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.provider.Settings;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.view.accessibility.AccessibilityEvent;
import android.view.animation.LinearInterpolator;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.SeekBar;
import android.widget.TextView;
import com.android.systemui.BasicRune;
import com.android.systemui.Dependency;
import com.android.systemui.R;
import com.android.systemui.util.SettingsHelper;
import com.android.systemui.volume.VolumeDependency;
import com.android.systemui.volume.store.StoreInteractor;
import com.android.systemui.volume.store.VolumePanelStore;
import com.android.systemui.volume.util.BlurEffect;
import com.android.systemui.volume.util.DisplayManagerWrapper;
import com.android.systemui.volume.util.HandlerWrapper;
import com.android.systemui.volume.util.SettingHelper;
import com.android.systemui.volume.util.VibratorWrapper;
import com.android.systemui.volume.view.ViewLevelConverter;
import com.android.systemui.volume.view.VolumePanelMotion;
import com.android.systemui.volume.view.VolumeSeekBar;
import com.android.systemui.volume.view.expand.VolumePanelExpandView$adjustTouchEventForOutsideTouch$1$$ExternalSyntheticOutline0;
import com.android.systemui.volume.view.icon.VolumeIcon;
import com.android.systemui.volume.view.subscreen.simple.SubDisplayVolumeRowView;
import com.samsung.systemui.splugins.volume.VolumeObserver;
import com.samsung.systemui.splugins.volume.VolumePanelAction;
import com.samsung.systemui.splugins.volume.VolumePanelRow;
import com.samsung.systemui.splugins.volume.VolumePanelState;
import java.util.function.Consumer;
import java.util.function.Predicate;
import kotlin.math.MathKt__MathJVMKt;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class SubDisplayVolumePanelPresentation extends Presentation implements VolumeObserver {
    public static final /* synthetic */ int $r8$clinit = 0;
    public int mActiveStream;
    public final ImageButton mArrowLeft;
    public final ImageButton mArrowRight;
    public final BlurEffect mBlurEffect;
    public View mBlurView;
    public final HandlerWrapper mHandlerWrapper;
    public boolean mIsDualAudio;
    public boolean mIsSeekBarTouching;
    public final ViewGroup mRowContainer;
    public boolean mStartProgress;
    public final VolumePanelStore mStore;
    public final StoreInteractor mStoreInteractor;
    public final VibratorWrapper mVibratorWrapper;
    public final VolumePanelMotion mVolumePanelMotion;
    public final TextView mWarningToastPopup;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.volume.view.subscreen.simple.SubDisplayVolumePanelPresentation$2, reason: invalid class name */
    /* loaded from: classes2.dex */
    public abstract /* synthetic */ class AnonymousClass2 {
        public static final /* synthetic */ int[] $SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelState$StateType;

        static {
            int[] iArr = new int[VolumePanelState.StateType.values().length];
            $SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelState$StateType = iArr;
            try {
                iArr[VolumePanelState.StateType.STATE_SHOW_SUB_DISPLAY_VOLUME_PANEL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelState$StateType[VolumePanelState.StateType.STATE_FOLDER_STATE_CHANGED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelState$StateType[VolumePanelState.StateType.STATE_ORIENTATION_CHANGED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelState$StateType[VolumePanelState.StateType.STATE_COVER_STATE_CHANGED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelState$StateType[VolumePanelState.StateType.STATE_DISMISS_VOLUME_PANEL.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelState$StateType[VolumePanelState.StateType.STATE_DISMISS.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelState$StateType[VolumePanelState.StateType.STATE_ARROW_RIGHT_CLICKED.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelState$StateType[VolumePanelState.StateType.STATE_ARROW_LEFT_CLICKED.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelState$StateType[VolumePanelState.StateType.STATE_SHOW_VOLUME_LIMITER_DIALOG.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelState$StateType[VolumePanelState.StateType.STATE_SHOW_VOLUME_SAFETY_WARNING_DIALOG.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelState$StateType[VolumePanelState.StateType.STATE_VOLUME_LIMITER_DIALOG_VOLUME_DOWN.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelState$StateType[VolumePanelState.StateType.STATE_VOLUME_SAFETY_WARNING_DIALOG_FLAG_DISMISS.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                $SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelState$StateType[VolumePanelState.StateType.STATE_SEEKBAR_START_PROGRESS.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                $SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelState$StateType[VolumePanelState.StateType.STATE_SEEKBAR_TOUCH_DOWN.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                $SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelState$StateType[VolumePanelState.StateType.STATE_SEEKBAR_TOUCH_UP.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                $SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelState$StateType[VolumePanelState.StateType.STATE_UPDATE.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public SubDisplayVolumePanelPresentation(com.android.systemui.volume.VolumeDependencyBase r6) {
        /*
            r5 = this;
            java.lang.Class<android.content.Context> r0 = android.content.Context.class
            com.android.systemui.volume.VolumeDependency r6 = (com.android.systemui.volume.VolumeDependency) r6
            java.lang.Object r0 = r6.get(r0)
            android.content.Context r0 = (android.content.Context) r0
            java.lang.Class<com.android.systemui.volume.util.DisplayManagerWrapper> r1 = com.android.systemui.volume.util.DisplayManagerWrapper.class
            java.lang.Object r2 = r6.get(r1)
            com.android.systemui.volume.util.DisplayManagerWrapper r2 = (com.android.systemui.volume.util.DisplayManagerWrapper) r2
            android.view.Display r2 = r2.getFrontSubDisplay()
            r3 = 2132018545(0x7f140571, float:1.96754E38)
            r5.<init>(r0, r2, r3)
            com.android.systemui.volume.store.StoreInteractor r0 = new com.android.systemui.volume.store.StoreInteractor
            r2 = 0
            r0.<init>(r5, r2)
            r5.mStoreInteractor = r0
            java.lang.Class<com.android.systemui.volume.util.HandlerWrapper> r2 = com.android.systemui.volume.util.HandlerWrapper.class
            java.lang.Object r2 = r6.get(r2)
            com.android.systemui.volume.util.HandlerWrapper r2 = (com.android.systemui.volume.util.HandlerWrapper) r2
            r5.mHandlerWrapper = r2
            java.lang.Class<com.android.systemui.volume.store.VolumePanelStore> r2 = com.android.systemui.volume.store.VolumePanelStore.class
            java.lang.Object r2 = r6.get(r2)
            com.android.systemui.volume.store.VolumePanelStore r2 = (com.android.systemui.volume.store.VolumePanelStore) r2
            r5.mStore = r2
            java.lang.Class<com.android.systemui.volume.view.VolumePanelMotion> r3 = com.android.systemui.volume.view.VolumePanelMotion.class
            java.lang.Object r3 = r6.get(r3)
            com.android.systemui.volume.view.VolumePanelMotion r3 = (com.android.systemui.volume.view.VolumePanelMotion) r3
            r5.mVolumePanelMotion = r3
            com.android.systemui.volume.util.BlurEffect r3 = new com.android.systemui.volume.util.BlurEffect
            android.content.Context r4 = r5.getContext()
            r3.<init>(r4, r6)
            r5.mBlurEffect = r3
            java.lang.Object r1 = r6.get(r1)
            com.android.systemui.volume.util.DisplayManagerWrapper r1 = (com.android.systemui.volume.util.DisplayManagerWrapper) r1
            java.lang.Class<com.android.systemui.volume.util.VibratorWrapper> r1 = com.android.systemui.volume.util.VibratorWrapper.class
            java.lang.Object r6 = r6.get(r1)
            com.android.systemui.volume.util.VibratorWrapper r6 = (com.android.systemui.volume.util.VibratorWrapper) r6
            r5.mVibratorWrapper = r6
            r0.store = r2
            boolean r6 = com.android.systemui.BasicRune.VOLUME_SUB_DISPLAY_WATCHFACE_VOLUME_DIALOG
            if (r6 == 0) goto L67
            r6 = 2131559709(0x7f0d051d, float:1.874477E38)
            goto L6a
        L67:
            r6 = 2131559703(0x7f0d0517, float:1.8744758E38)
        L6a:
            r5.setContentView(r6)
            r6 = 2131364590(0x7f0a0aee, float:1.8349021E38)
            android.view.View r6 = r5.findViewById(r6)
            android.widget.ImageButton r6 = (android.widget.ImageButton) r6
            r5.mArrowLeft = r6
            r6 = 2131364591(0x7f0a0aef, float:1.8349023E38)
            android.view.View r6 = r5.findViewById(r6)
            android.widget.ImageButton r6 = (android.widget.ImageButton) r6
            r5.mArrowRight = r6
            r6 = 2131364593(0x7f0a0af1, float:1.8349027E38)
            android.view.View r6 = r5.findViewById(r6)
            android.view.ViewGroup r6 = (android.view.ViewGroup) r6
            r5.mRowContainer = r6
            r6 = 2131364595(0x7f0a0af3, float:1.8349032E38)
            android.view.View r6 = r5.findViewById(r6)
            android.widget.TextView r6 = (android.widget.TextView) r6
            r5.mWarningToastPopup = r6
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.volume.view.subscreen.simple.SubDisplayVolumePanelPresentation.<init>(com.android.systemui.volume.VolumeDependencyBase):void");
    }

    public final void addRow(final VolumePanelState volumePanelState) {
        final boolean z;
        boolean isMultiSoundBt = volumePanelState.isMultiSoundBt();
        if ((!isMultiSoundBt && volumePanelState.getActiveStream() == 3) || (isMultiSoundBt && volumePanelState.getActiveStream() == 21)) {
            z = true;
        } else {
            z = false;
        }
        volumePanelState.getVolumeRowList().stream().filter(new Predicate() { // from class: com.android.systemui.volume.view.subscreen.simple.SubDisplayVolumePanelPresentation$$ExternalSyntheticLambda3
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                SubDisplayVolumePanelPresentation subDisplayVolumePanelPresentation = SubDisplayVolumePanelPresentation.this;
                boolean z2 = z;
                VolumePanelState volumePanelState2 = volumePanelState;
                VolumePanelRow volumePanelRow = (VolumePanelRow) obj;
                subDisplayVolumePanelPresentation.getClass();
                if (z2 && volumePanelRow.getStreamType() == 22) {
                    return subDisplayVolumePanelPresentation.mIsDualAudio;
                }
                if (volumePanelRow.getStreamType() == volumePanelState2.getActiveStream()) {
                    return true;
                }
                return false;
            }
        }).forEach(new Consumer() { // from class: com.android.systemui.volume.view.subscreen.simple.SubDisplayVolumePanelPresentation$$ExternalSyntheticLambda4
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                boolean z2;
                int i;
                boolean z3;
                int i2;
                int i3;
                boolean z4;
                float f;
                View view;
                boolean z5;
                int i4;
                int i5;
                boolean z6;
                SubDisplayVolumePanelPresentation subDisplayVolumePanelPresentation = SubDisplayVolumePanelPresentation.this;
                VolumePanelState volumePanelState2 = volumePanelState;
                boolean z7 = z;
                VolumePanelRow volumePanelRow = (VolumePanelRow) obj;
                subDisplayVolumePanelPresentation.getClass();
                int i6 = 0;
                float f2 = 1.0f;
                if (BasicRune.VOLUME_SUB_DISPLAY_WATCHFACE_VOLUME_DIALOG) {
                    final SubLargeDisplayVolumeRowView subLargeDisplayVolumeRowView = (SubLargeDisplayVolumeRowView) LayoutInflater.from(subDisplayVolumePanelPresentation.getContext()).inflate(R.layout.volume_sub_large_display_row_view, (ViewGroup) null);
                    VolumePanelStore volumePanelStore = subDisplayVolumePanelPresentation.mStore;
                    HandlerWrapper handlerWrapper = subDisplayVolumePanelPresentation.mHandlerWrapper;
                    VolumePanelMotion volumePanelMotion = subDisplayVolumePanelPresentation.mVolumePanelMotion;
                    if (subDisplayVolumePanelPresentation.mIsDualAudio && z7) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    VibratorWrapper vibratorWrapper = subDisplayVolumePanelPresentation.mVibratorWrapper;
                    StoreInteractor storeInteractor = subLargeDisplayVolumeRowView.mStoreInteractor;
                    storeInteractor.store = volumePanelStore;
                    storeInteractor.observeStore();
                    subLargeDisplayVolumeRowView.mVolumePanelMotion = volumePanelMotion;
                    subLargeDisplayVolumeRowView.mHandlerWrapper = handlerWrapper;
                    subLargeDisplayVolumeRowView.mVibratorWrapper = vibratorWrapper;
                    boolean isHasVibrator = volumePanelState2.isHasVibrator();
                    subLargeDisplayVolumeRowView.mStream = volumePanelRow.getStreamType();
                    boolean isSliderEnabled = volumePanelRow.isSliderEnabled();
                    boolean isIconEnabled = volumePanelRow.isIconEnabled();
                    subLargeDisplayVolumeRowView.mIconClickable = volumePanelRow.isIconClickable();
                    subLargeDisplayVolumeRowView.mIsDualViewEnabled = z3;
                    VolumeIcon volumeIcon = (VolumeIcon) subLargeDisplayVolumeRowView.findViewById(R.id.volume_row_icon);
                    subLargeDisplayVolumeRowView.mIcon = volumeIcon;
                    volumeIcon.initialize(volumePanelStore, volumePanelState2, volumePanelRow);
                    if (volumePanelState2.isShowA11yStream()) {
                        if (subLargeDisplayVolumeRowView.mStream == 10) {
                            subLargeDisplayVolumeRowView.mIcon.setImportantForAccessibility(2);
                        } else {
                            subLargeDisplayVolumeRowView.mIcon.setOnClickListener(new View.OnClickListener() { // from class: com.android.systemui.volume.view.subscreen.simple.SubLargeDisplayVolumeRowView$$ExternalSyntheticLambda7
                                @Override // android.view.View.OnClickListener
                                public final void onClick(View view2) {
                                    SubLargeDisplayVolumeRowView subLargeDisplayVolumeRowView2 = SubLargeDisplayVolumeRowView.this;
                                    subLargeDisplayVolumeRowView2.mStoreInteractor.sendAction(new VolumePanelAction.Builder(VolumePanelAction.ActionType.ACTION_VOLUME_ICON_CLICKED).stream(subLargeDisplayVolumeRowView2.mStream).isFromOutside(true).build(), false);
                                }
                            });
                            VolumeIcon volumeIcon2 = subLargeDisplayVolumeRowView.mIcon;
                            if (volumeIcon2.isEnabled() && subLargeDisplayVolumeRowView.mIconClickable) {
                                z6 = true;
                            } else {
                                z6 = false;
                            }
                            volumeIcon2.setClickable(z6);
                        }
                    }
                    if (!isSliderEnabled) {
                        subLargeDisplayVolumeRowView.mIcon.setEnabled(isIconEnabled);
                        VolumeIcon volumeIcon3 = subLargeDisplayVolumeRowView.mIcon;
                        if (!isIconEnabled) {
                            f2 = 0.4f;
                        }
                        volumeIcon3.setAlpha(f2);
                    } else {
                        subLargeDisplayVolumeRowView.mIcon.setEnabled(true);
                        subLargeDisplayVolumeRowView.mIcon.setAlpha(1.0f);
                    }
                    VolumeSeekBar volumeSeekBar = (VolumeSeekBar) subLargeDisplayVolumeRowView.findViewById(R.id.volume_row_slider);
                    subLargeDisplayVolumeRowView.mSeekBar = volumeSeekBar;
                    volumeSeekBar.stream = subLargeDisplayVolumeRowView.mStream;
                    volumeSeekBar.isTracking = false;
                    StoreInteractor storeInteractor2 = volumeSeekBar.storeInteractor;
                    storeInteractor2.store = volumePanelStore;
                    storeInteractor2.observeStore();
                    if (subLargeDisplayVolumeRowView.mStream == 20) {
                        subLargeDisplayVolumeRowView.mSeekBar.setTouchDisabled(true);
                    }
                    subLargeDisplayVolumeRowView.mSeekBar.semSetMin(ViewLevelConverter.viewMinLevel(volumePanelRow));
                    subLargeDisplayVolumeRowView.mSeekBar.setMax(ViewLevelConverter.viewMaxLevel(volumePanelRow));
                    subLargeDisplayVolumeRowView.mSeekBar.setProgress(ViewLevelConverter.viewRealLevel(volumePanelRow));
                    subLargeDisplayVolumeRowView.mSeekBar.setEnabled(isSliderEnabled);
                    TextView textView = (TextView) subLargeDisplayVolumeRowView.findViewById(R.id.volume_row_header);
                    subLargeDisplayVolumeRowView.mLabelTextView = textView;
                    textView.setText(subLargeDisplayVolumeRowView.getStreamLabel(volumePanelState2, volumePanelRow));
                    subLargeDisplayVolumeRowView.mLabelTextView.setSelected(true);
                    if (volumePanelRow.getStreamType() != 22) {
                        if (volumePanelRow.isVisible()) {
                            i5 = 0;
                        } else {
                            i5 = 8;
                        }
                        subLargeDisplayVolumeRowView.setVisibility(i5);
                    }
                    ViewGroup viewGroup = (ViewGroup) subLargeDisplayVolumeRowView.findViewById(R.id.sub_display_dual_volume_icon_label);
                    if (z3) {
                        i2 = 0;
                    } else {
                        i2 = 8;
                    }
                    viewGroup.setVisibility(i2);
                    ViewGroup viewGroup2 = (ViewGroup) subLargeDisplayVolumeRowView.findViewById(R.id.volume_seekbar_background);
                    if (subLargeDisplayVolumeRowView.mIsDualViewEnabled) {
                        viewGroup2.setBackground(null);
                        if (((SettingsHelper) Dependency.get(SettingsHelper.class)).isReduceTransparencyEnabled()) {
                            subLargeDisplayVolumeRowView.mSeekBar.setProgressDrawable(subLargeDisplayVolumeRowView.getContext().getDrawable(R.drawable.sub_volume_seekbar_drawable_expand_reduce_transparency));
                        } else {
                            subLargeDisplayVolumeRowView.mSeekBar.setProgressDrawable(subLargeDisplayVolumeRowView.getContext().getDrawable(R.drawable.sub_display_volume_seekbar_drawable_expand_blur));
                        }
                    } else if (((SettingsHelper) Dependency.get(SettingsHelper.class)).isReduceTransparencyEnabled()) {
                        subLargeDisplayVolumeRowView.mSeekBar.setProgressDrawable(subLargeDisplayVolumeRowView.getContext().getDrawable(R.drawable.sub_volume_seekbar_drawable_reduce_transparency));
                        viewGroup2.setBackground(subLargeDisplayVolumeRowView.getContext().getDrawable(R.drawable.sub_volume_seekbar_bg_reduce_transparency));
                    } else {
                        subLargeDisplayVolumeRowView.mSeekBar.setProgressDrawable(subLargeDisplayVolumeRowView.getContext().getDrawable(R.drawable.sub_display_volume_seekbar_drawable));
                        viewGroup2.setBackground(subLargeDisplayVolumeRowView.getContext().getDrawable(R.drawable.sub_volume_seekbar_bg_blur));
                    }
                    ViewGroup viewGroup3 = (ViewGroup) subLargeDisplayVolumeRowView.findViewById(R.id.volume_seekbar_container);
                    LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) viewGroup3.getLayoutParams();
                    Context context = subLargeDisplayVolumeRowView.getContext();
                    CoverDisplayLayoutHelper coverDisplayLayoutHelper = CoverDisplayLayoutHelper.INSTANCE;
                    float f3 = context.getResources().getDisplayMetrics().widthPixels;
                    CoverDisplayLayoutHelper.INSTANCE.getClass();
                    Resources resources = context.getResources();
                    if (z3) {
                        i3 = R.dimen.volume_sub_large_display_dual_seek_bar_width_ratio;
                    } else {
                        i3 = R.dimen.volume_sub_large_display_seek_bar_width_ratio;
                    }
                    float f4 = resources.getFloat(i3);
                    SettingHelper.INSTANCE.getClass();
                    if (Settings.Secure.getInt(context.getContentResolver(), "show_navigation_for_subscreen", 0) == 1) {
                        z4 = true;
                    } else {
                        z4 = false;
                    }
                    if (z4) {
                        VolumeDependency.Companion.getClass();
                        VolumeDependency volumeDependency = VolumeDependency.sInstance;
                        if (volumeDependency == null) {
                            volumeDependency = null;
                        }
                        Display frontSubDisplay = ((DisplayManagerWrapper) volumeDependency.get(DisplayManagerWrapper.class)).getFrontSubDisplay();
                        if (frontSubDisplay != null) {
                            Point point = new Point();
                            frontSubDisplay.getRealSize(point);
                            if (point.x < point.y && frontSubDisplay.getRotation() != 0) {
                                Resources resources2 = context.getResources();
                                if (z3) {
                                    i4 = R.dimen.volume_sub_large_display_dual_seek_bar_width_sero_ratio;
                                } else {
                                    i4 = R.dimen.volume_sub_large_display_seek_bar_width_sero_ratio;
                                }
                                f4 = resources2.getFloat(i4);
                            }
                        }
                    }
                    layoutParams.width = MathKt__MathJVMKt.roundToInt(f3 * f4);
                    Context context2 = subLargeDisplayVolumeRowView.getContext();
                    float f5 = context2.getResources().getDisplayMetrics().widthPixels;
                    if (z3) {
                        f = context2.getResources().getFloat(R.dimen.volume_sub_large_display_dual_seek_bar_margin_ratio);
                    } else {
                        f = 0.0f;
                    }
                    int roundToInt = MathKt__MathJVMKt.roundToInt(f5 * f);
                    layoutParams.setMarginStart(roundToInt);
                    layoutParams.setMarginEnd(roundToInt);
                    viewGroup3.setLayoutParams(layoutParams);
                    subLargeDisplayVolumeRowView.updateContentDescription(volumePanelRow, isHasVibrator);
                    subLargeDisplayVolumeRowView.mSeekBar.setContentDescription(subLargeDisplayVolumeRowView.mLabelTextView.getText());
                    subLargeDisplayVolumeRowView.setLayoutDirection(subLargeDisplayVolumeRowView.getContext().getResources().getConfiguration().getLayoutDirection());
                    if (volumePanelRow.getStreamType() == 22) {
                        subLargeDisplayVolumeRowView.setVisibility(8);
                    }
                    View view2 = (ViewGroup) subLargeDisplayVolumeRowView.findViewById(R.id.volume_seekbar_container);
                    VolumePanelMotion volumePanelMotion2 = subLargeDisplayVolumeRowView.mVolumePanelMotion;
                    if (z3) {
                        view = view2;
                    } else {
                        view = subLargeDisplayVolumeRowView;
                    }
                    volumePanelMotion2.getClass();
                    subLargeDisplayVolumeRowView.mTouchDownAnimation = VolumePanelMotion.getSeekBarTouchDownAnimation(view);
                    VolumePanelMotion volumePanelMotion3 = subLargeDisplayVolumeRowView.mVolumePanelMotion;
                    if (!z3) {
                        view2 = subLargeDisplayVolumeRowView;
                    }
                    volumePanelMotion3.getClass();
                    subLargeDisplayVolumeRowView.mTouchUpAnimation = VolumePanelMotion.getSeekBarTouchUpAnimation(view2);
                    subLargeDisplayVolumeRowView.mVolumePanelMotion.getClass();
                    subLargeDisplayVolumeRowView.mKeyDownAnimation = VolumePanelMotion.getSeekBarKeyDownAnimation(subLargeDisplayVolumeRowView);
                    subLargeDisplayVolumeRowView.mVolumePanelMotion.getClass();
                    subLargeDisplayVolumeRowView.mKeyUpAnimation = VolumePanelMotion.getSeekBarKeyUpAnimation(subLargeDisplayVolumeRowView);
                    subDisplayVolumePanelPresentation.mRowContainer.addView(subLargeDisplayVolumeRowView);
                    if (volumePanelRow.getStreamType() == volumePanelState2.getActiveStream()) {
                        z5 = true;
                    } else {
                        z5 = false;
                    }
                    if (z5) {
                        subDisplayVolumePanelPresentation.mActiveStream = volumePanelRow.getStreamType();
                    }
                    if (!subDisplayVolumePanelPresentation.mIsDualAudio) {
                        subDisplayVolumePanelPresentation.findViewById(R.id.volume_seekbar_outline_stroke).setVisibility(0);
                        return;
                    }
                    return;
                }
                SubDisplayVolumeRowView subDisplayVolumeRowView = (SubDisplayVolumeRowView) LayoutInflater.from(subDisplayVolumePanelPresentation.getContext()).inflate(R.layout.volume_sub_display_row_view, (ViewGroup) null);
                VolumePanelStore volumePanelStore2 = subDisplayVolumePanelPresentation.mStore;
                HandlerWrapper handlerWrapper2 = subDisplayVolumePanelPresentation.mHandlerWrapper;
                if (subDisplayVolumePanelPresentation.mIsDualAudio && z7) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                StoreInteractor storeInteractor3 = subDisplayVolumeRowView.mStoreInteractor;
                storeInteractor3.store = volumePanelStore2;
                storeInteractor3.observeStore();
                subDisplayVolumeRowView.mHandlerWrapper = handlerWrapper2;
                boolean isHasVibrator2 = volumePanelState2.isHasVibrator();
                subDisplayVolumeRowView.mStream = volumePanelRow.getStreamType();
                volumePanelRow.getRealLevel();
                volumePanelRow.getLevelMin();
                volumePanelRow.getLevelMax();
                boolean isSliderEnabled2 = volumePanelRow.isSliderEnabled();
                boolean isIconEnabled2 = volumePanelRow.isIconEnabled();
                if (z2) {
                    ((ImageButton) subDisplayVolumeRowView.findViewById(R.id.volume_row_icon_with_label)).setClickable(false);
                } else {
                    VolumeIcon volumeIcon4 = (VolumeIcon) subDisplayVolumeRowView.findViewById(R.id.volume_row_icon);
                    subDisplayVolumeRowView.mIcon = volumeIcon4;
                    volumeIcon4.initialize(volumePanelStore2, volumePanelState2, volumePanelRow);
                    subDisplayVolumeRowView.mIcon.setClickable(false);
                    if (!isSliderEnabled2) {
                        subDisplayVolumeRowView.mIcon.setEnabled(isIconEnabled2);
                        VolumeIcon volumeIcon5 = subDisplayVolumeRowView.mIcon;
                        if (!isIconEnabled2) {
                            f2 = 0.4f;
                        }
                        volumeIcon5.setAlpha(f2);
                    } else {
                        subDisplayVolumeRowView.mIcon.setEnabled(true);
                        subDisplayVolumeRowView.mIcon.setAlpha(1.0f);
                    }
                }
                SeekBar seekBar = (SeekBar) subDisplayVolumeRowView.findViewById(R.id.volume_row_slider);
                subDisplayVolumeRowView.mSeekBar = seekBar;
                seekBar.setProgressTintList(subDisplayVolumeRowView.mIconActiveColor);
                subDisplayVolumeRowView.mSeekBar.setProgressBackgroundTintList(subDisplayVolumeRowView.mIconActiveBgColor);
                subDisplayVolumeRowView.mSeekBar.setThumbTintList(subDisplayVolumeRowView.mIconActiveColor);
                subDisplayVolumeRowView.mSeekBar.setDualModeOverlapColor(subDisplayVolumeRowView.getContext().getResources().getColor(R.color.sub_display_volume_progress_earshock_bg_color, null), subDisplayVolumeRowView.getContext().getResources().getColor(R.color.sub_display_volume_progress_earshock_color, null));
                if (subDisplayVolumeRowView.mStream == 20) {
                    subDisplayVolumeRowView.mSeekBar.setTouchDisabled(true);
                }
                subDisplayVolumeRowView.mSeekBar.setOnSeekBarChangeListener(new SubDisplayVolumeRowView.VolumeSeekBarChangeListener(subDisplayVolumeRowView, i6));
                subDisplayVolumeRowView.mSeekBar.setEnabled(isSliderEnabled2);
                subDisplayVolumeRowView.mSeekBar.semSetMin(ViewLevelConverter.viewMinLevel(volumePanelRow));
                subDisplayVolumeRowView.mSeekBar.setMax(ViewLevelConverter.viewMaxLevel(volumePanelRow));
                subDisplayVolumeRowView.mSeekBar.setProgress(ViewLevelConverter.viewRealLevel(volumePanelRow));
                int earProtectLevel = volumePanelRow.getEarProtectLevel();
                if (earProtectLevel != subDisplayVolumeRowView.mEarProtectLevel) {
                    subDisplayVolumeRowView.mEarProtectLevel = earProtectLevel;
                    subDisplayVolumeRowView.mSeekBar.semSetOverlapPointForDualColor(earProtectLevel);
                }
                TextView textView2 = (TextView) subDisplayVolumeRowView.findViewById(R.id.volume_row_header);
                subDisplayVolumeRowView.mLabelTextView = textView2;
                textView2.setText(subDisplayVolumeRowView.getStreamLabel(volumePanelState2, volumePanelRow));
                subDisplayVolumeRowView.mLabelTextView.setSelected(true);
                if (volumePanelRow.getStreamType() != 22) {
                    if (volumePanelRow.isVisible()) {
                        i = 0;
                    } else {
                        i = 8;
                    }
                    subDisplayVolumeRowView.setVisibility(i);
                }
                ViewGroup viewGroup4 = (ViewGroup) subDisplayVolumeRowView.findViewById(R.id.sub_display_dual_volume_icon_label);
                if (z2) {
                    ((VolumeIcon) subDisplayVolumeRowView.findViewById(R.id.volume_row_icon)).setVisibility(8);
                    viewGroup4.setVisibility(0);
                } else {
                    viewGroup4.setVisibility(8);
                }
                subDisplayVolumeRowView.updateContentDescription(volumePanelRow, isHasVibrator2);
                subDisplayVolumeRowView.mSeekBar.setContentDescription(subDisplayVolumeRowView.mLabelTextView.getText());
                subDisplayVolumeRowView.setLayoutDirection(subDisplayVolumeRowView.getContext().getResources().getConfiguration().getLayoutDirection());
                if (volumePanelRow.getStreamType() == 22) {
                    subDisplayVolumeRowView.setVisibility(8);
                }
                subDisplayVolumePanelPresentation.mRowContainer.addView(subDisplayVolumeRowView);
            }
        });
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public final void dismiss() {
        super.dismiss();
        onStop();
        this.mStoreInteractor.sendAction(new VolumePanelAction.Builder(VolumePanelAction.ActionType.ACTION_DISMISS_SUB_DISPLAY_VOLUME_PANEL).build(), true);
        this.mRowContainer.removeAllViews();
        this.mWarningToastPopup.setVisibility(8);
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x007b, code lost:
    
        if (r0 != false) goto L30;
     */
    @Override // android.app.Dialog, android.view.Window.Callback
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean dispatchTouchEvent(android.view.MotionEvent r9) {
        /*
            r8 = this;
            boolean r0 = com.android.systemui.BasicRune.VOLUME_SUB_DISPLAY_WATCHFACE_VOLUME_DIALOG
            if (r0 == 0) goto L8c
            com.android.systemui.volume.store.StoreInteractor r0 = r8.mStoreInteractor
            com.samsung.systemui.splugins.volume.VolumePanelAction$Builder r1 = new com.samsung.systemui.splugins.volume.VolumePanelAction$Builder
            com.samsung.systemui.splugins.volume.VolumePanelAction$ActionType r2 = com.samsung.systemui.splugins.volume.VolumePanelAction.ActionType.ACTION_TOUCH_PANEL
            r1.<init>(r2)
            r2 = 1
            com.samsung.systemui.splugins.volume.VolumePanelAction$Builder r1 = r1.isFromOutside(r2)
            com.samsung.systemui.splugins.volume.VolumePanelAction r1 = r1.build()
            r3 = 0
            r0.sendAction(r1, r3)
            int r0 = r9.getAction()
            if (r0 == r2) goto L33
            r1 = 4
            if (r0 == r1) goto L24
            goto L8c
        L24:
            com.android.systemui.volume.store.StoreInteractor r9 = r8.mStoreInteractor
            com.samsung.systemui.splugins.volume.VolumePanelAction$Builder r0 = new com.samsung.systemui.splugins.volume.VolumePanelAction$Builder
            com.samsung.systemui.splugins.volume.VolumePanelAction$ActionType r1 = com.samsung.systemui.splugins.volume.VolumePanelAction.ActionType.ACTION_TOUCH_OUTSIDE
            r0.<init>(r1)
            com.android.systemui.volume.view.expand.VolumePanelExpandView$adjustTouchEventForOutsideTouch$1$$ExternalSyntheticOutline0.m(r0, r2, r9, r3)
            r8.mStartProgress = r3
            return r2
        L33:
            boolean r0 = r8.mIsSeekBarTouching
            if (r0 != 0) goto L8a
            boolean r0 = r8.mStartProgress
            if (r0 != 0) goto L8a
            r0 = 2131364610(0x7f0a0b02, float:1.8349062E38)
            android.view.View r0 = r8.findViewById(r0)
            android.view.ViewGroup r0 = (android.view.ViewGroup) r0
            boolean r1 = r8.mIsDualAudio
            if (r1 == 0) goto L7d
            float r1 = r9.getRawX()
            float r4 = r9.getRawY()
            r5 = 2
            int[] r5 = new int[r5]
            r0.getLocationOnScreen(r5)
            r6 = r5[r3]
            float r7 = (float) r6
            int r7 = (r1 > r7 ? 1 : (r1 == r7 ? 0 : -1))
            if (r7 <= 0) goto L7a
            int r7 = r0.getWidth()
            int r7 = r7 + r6
            float r6 = (float) r7
            int r1 = (r1 > r6 ? 1 : (r1 == r6 ? 0 : -1))
            if (r1 >= 0) goto L7a
            r1 = r5[r2]
            float r5 = (float) r1
            int r5 = (r4 > r5 ? 1 : (r4 == r5 ? 0 : -1))
            if (r5 <= 0) goto L7a
            int r0 = r0.getHeight()
            int r0 = r0 + r1
            float r0 = (float) r0
            int r0 = (r4 > r0 ? 1 : (r4 == r0 ? 0 : -1))
            if (r0 >= 0) goto L7a
            r0 = r2
            goto L7b
        L7a:
            r0 = r3
        L7b:
            if (r0 != 0) goto L8a
        L7d:
            com.android.systemui.volume.store.StoreInteractor r8 = r8.mStoreInteractor
            com.samsung.systemui.splugins.volume.VolumePanelAction$Builder r9 = new com.samsung.systemui.splugins.volume.VolumePanelAction$Builder
            com.samsung.systemui.splugins.volume.VolumePanelAction$ActionType r0 = com.samsung.systemui.splugins.volume.VolumePanelAction.ActionType.ACTION_TOUCH_OUTSIDE
            r9.<init>(r0)
            com.android.systemui.volume.view.expand.VolumePanelExpandView$adjustTouchEventForOutsideTouch$1$$ExternalSyntheticOutline0.m(r9, r2, r8, r3)
            return r2
        L8a:
            r8.mStartProgress = r3
        L8c:
            boolean r8 = super.dispatchTouchEvent(r9)
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.volume.view.subscreen.simple.SubDisplayVolumePanelPresentation.dispatchTouchEvent(android.view.MotionEvent):boolean");
    }

    public final void initDialog() {
        Window window = getWindow();
        window.addFlags(8);
        WindowManager.LayoutParams attributes = getWindow().getAttributes();
        attributes.setTitle("SubScreenVolumeBar");
        if (BasicRune.VOLUME_SUB_DISPLAY_WATCHFACE_VOLUME_DIALOG) {
            window.setBackgroundDrawable(new ColorDrawable(0));
            window.clearFlags(2);
            window.addFlags(17563936);
            setCanceledOnTouchOutside(true);
            attributes.type = 2037;
            attributes.format = -3;
            attributes.windowAnimations = -1;
            attributes.accessibilityTitle = getContext().getString(R.string.volume_panel_view_title);
            setOnShowListener(new DialogInterface.OnShowListener() { // from class: com.android.systemui.volume.view.subscreen.simple.SubDisplayVolumePanelPresentation$$ExternalSyntheticLambda0
                @Override // android.content.DialogInterface.OnShowListener
                public final void onShow(DialogInterface dialogInterface) {
                    SubDisplayVolumePanelPresentation subDisplayVolumePanelPresentation = SubDisplayVolumePanelPresentation.this;
                    subDisplayVolumePanelPresentation.getClass();
                    final Runnable subDisplayVolumePanelPresentation$$ExternalSyntheticLambda5 = new SubDisplayVolumePanelPresentation$$ExternalSyntheticLambda5();
                    boolean z = BasicRune.VOLUME_PARTIAL_BLUR;
                    if (z) {
                        if (subDisplayVolumePanelPresentation.mIsDualAudio) {
                            subDisplayVolumePanelPresentation.mBlurView = subDisplayVolumePanelPresentation.findViewById(R.id.sub_volume_panel_dual_view_blur);
                            subDisplayVolumePanelPresentation$$ExternalSyntheticLambda5 = new SubDisplayVolumePanelPresentation$$ExternalSyntheticLambda1(subDisplayVolumePanelPresentation, 2);
                        } else {
                            View findViewById = subDisplayVolumePanelPresentation.mRowContainer.findViewById(R.id.sub_volume_panel_captured_blur);
                            subDisplayVolumePanelPresentation.mBlurView = findViewById;
                            if (findViewById != null) {
                                findViewById.setForeground(subDisplayVolumePanelPresentation.getContext().getDrawable(R.drawable.sub_volume_seekbar_fg));
                                subDisplayVolumePanelPresentation$$ExternalSyntheticLambda5 = new SubDisplayVolumePanelPresentation$$ExternalSyntheticLambda1(subDisplayVolumePanelPresentation, 3);
                            }
                        }
                    }
                    VolumePanelMotion volumePanelMotion = subDisplayVolumePanelPresentation.mVolumePanelMotion;
                    final View decorView = subDisplayVolumePanelPresentation.getWindow().getDecorView();
                    volumePanelMotion.getClass();
                    ObjectAnimator ofFloat = ObjectAnimator.ofFloat(decorView, "alpha", decorView.getAlpha(), 1.0f);
                    ofFloat.setDuration(200L);
                    ofFloat.setInterpolator(new LinearInterpolator());
                    if (z) {
                        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.android.systemui.volume.view.VolumePanelMotion$startSubVolumePanelShowAnimation$1$1
                            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                                if (decorView.getAlpha() > 0.1f) {
                                    subDisplayVolumePanelPresentation$$ExternalSyntheticLambda5.run();
                                }
                            }
                        });
                        ofFloat.addListener(new AnimatorListenerAdapter() { // from class: com.android.systemui.volume.view.VolumePanelMotion$startSubVolumePanelShowAnimation$1$2
                            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                            public final void onAnimationEnd(Animator animator) {
                                subDisplayVolumePanelPresentation$$ExternalSyntheticLambda5.run();
                            }
                        });
                    }
                    ofFloat.start();
                }
            });
        }
        window.setAttributes(attributes);
        getWindow().getDecorView().setAccessibilityDelegate(new View.AccessibilityDelegate() { // from class: com.android.systemui.volume.view.subscreen.simple.SubDisplayVolumePanelPresentation.1
            @Override // android.view.View.AccessibilityDelegate
            public final boolean onRequestSendAccessibilityEvent(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
                VolumePanelExpandView$adjustTouchEventForOutsideTouch$1$$ExternalSyntheticOutline0.m(new VolumePanelAction.Builder(VolumePanelAction.ActionType.ACTION_SEND_ACCESSIBILITY_EVENT), true, SubDisplayVolumePanelPresentation.this.mStoreInteractor, true);
                return super.onRequestSendAccessibilityEvent(viewGroup, view, accessibilityEvent);
            }
        });
    }

    @Override // com.samsung.systemui.splugins.volume.VolumeObserver
    public final void onChanged(Object obj) {
        boolean z;
        VolumePanelState volumePanelState = (VolumePanelState) obj;
        final int i = 1;
        final int i2 = 0;
        switch (AnonymousClass2.$SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelState$StateType[volumePanelState.getStateType().ordinal()]) {
            case 1:
                this.mIsDualAudio = volumePanelState.isDualAudio();
                boolean isMultiSoundBt = volumePanelState.isMultiSoundBt();
                if ((!isMultiSoundBt && volumePanelState.getActiveStream() == 3) || (isMultiSoundBt && volumePanelState.getActiveStream() == 21)) {
                    z = true;
                } else {
                    z = false;
                }
                ViewGroup viewGroup = (ViewGroup) findViewById(R.id.sub_volume_panel_view_background);
                ViewGroup viewGroup2 = (ViewGroup) findViewById(R.id.sub_volume_panel_expand_view_background_stroke);
                this.mArrowLeft.setVisibility(8);
                if (this.mIsDualAudio && z) {
                    this.mArrowRight.setVisibility(0);
                    if (BasicRune.VOLUME_SUB_DISPLAY_WATCHFACE_VOLUME_DIALOG && viewGroup != null && viewGroup2 != null) {
                        if (((SettingsHelper) Dependency.get(SettingsHelper.class)).isReduceTransparencyEnabled()) {
                            viewGroup.setBackground(getContext().getDrawable(R.drawable.sub_volume_panel_expand_bg_reduce_transparency));
                            viewGroup2.setVisibility(8);
                        } else {
                            viewGroup.setBackground(getContext().getDrawable(R.drawable.sub_volume_panel_expand_bg_blur));
                            viewGroup2.setVisibility(0);
                        }
                    }
                    this.mArrowLeft.setOnClickListener(new View.OnClickListener(this) { // from class: com.android.systemui.volume.view.subscreen.simple.SubDisplayVolumePanelPresentation$$ExternalSyntheticLambda2
                        public final /* synthetic */ SubDisplayVolumePanelPresentation f$0;

                        {
                            this.f$0 = this;
                        }

                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            switch (i2) {
                                case 0:
                                    VolumePanelExpandView$adjustTouchEventForOutsideTouch$1$$ExternalSyntheticOutline0.m(new VolumePanelAction.Builder(VolumePanelAction.ActionType.ACTION_ARROW_LEFT_CLICKED), true, this.f$0.mStoreInteractor, true);
                                    return;
                                default:
                                    VolumePanelExpandView$adjustTouchEventForOutsideTouch$1$$ExternalSyntheticOutline0.m(new VolumePanelAction.Builder(VolumePanelAction.ActionType.ACTION_ARROW_RIGHT_CLICKED), true, this.f$0.mStoreInteractor, true);
                                    return;
                            }
                        }
                    });
                    this.mArrowRight.setOnClickListener(new View.OnClickListener(this) { // from class: com.android.systemui.volume.view.subscreen.simple.SubDisplayVolumePanelPresentation$$ExternalSyntheticLambda2
                        public final /* synthetic */ SubDisplayVolumePanelPresentation f$0;

                        {
                            this.f$0 = this;
                        }

                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            switch (i) {
                                case 0:
                                    VolumePanelExpandView$adjustTouchEventForOutsideTouch$1$$ExternalSyntheticOutline0.m(new VolumePanelAction.Builder(VolumePanelAction.ActionType.ACTION_ARROW_LEFT_CLICKED), true, this.f$0.mStoreInteractor, true);
                                    return;
                                default:
                                    VolumePanelExpandView$adjustTouchEventForOutsideTouch$1$$ExternalSyntheticOutline0.m(new VolumePanelAction.Builder(VolumePanelAction.ActionType.ACTION_ARROW_RIGHT_CLICKED), true, this.f$0.mStoreInteractor, true);
                                    return;
                            }
                        }
                    });
                } else {
                    this.mArrowRight.setVisibility(8);
                    if (BasicRune.VOLUME_SUB_DISPLAY_WATCHFACE_VOLUME_DIALOG && viewGroup != null && viewGroup2 != null) {
                        viewGroup.setBackground(null);
                        viewGroup2.setVisibility(8);
                        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) viewGroup.getLayoutParams();
                        marginLayoutParams.leftMargin = 0;
                        marginLayoutParams.rightMargin = 0;
                    }
                }
                addRow(volumePanelState);
                if (BasicRune.VOLUME_SUB_DISPLAY_WATCHFACE_VOLUME_DIALOG) {
                    initDialog();
                    getWindow().getDecorView().setAlpha(0.0f);
                }
                if (volumePanelState.isShowingVolumeSafetyWarningDialog() || volumePanelState.isShowingVolumeLimiterDialog()) {
                    this.mWarningToastPopup.setVisibility(0);
                }
                show();
                return;
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
                if (volumePanelState.isShowingSubDisplayVolumePanel()) {
                    if (BasicRune.VOLUME_SUB_DISPLAY_WATCHFACE_VOLUME_DIALOG) {
                        VolumePanelMotion volumePanelMotion = this.mVolumePanelMotion;
                        View decorView = getWindow().getDecorView();
                        final SubDisplayVolumePanelPresentation$$ExternalSyntheticLambda1 subDisplayVolumePanelPresentation$$ExternalSyntheticLambda1 = new SubDisplayVolumePanelPresentation$$ExternalSyntheticLambda1(this, 0);
                        final SubDisplayVolumePanelPresentation$$ExternalSyntheticLambda1 subDisplayVolumePanelPresentation$$ExternalSyntheticLambda12 = new SubDisplayVolumePanelPresentation$$ExternalSyntheticLambda1(this, 1);
                        volumePanelMotion.getClass();
                        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(decorView, "alpha", decorView.getAlpha(), 0.0f);
                        ofFloat.setDuration(200L);
                        ofFloat.setInterpolator(new LinearInterpolator());
                        ofFloat.addListener(new AnimatorListenerAdapter() { // from class: com.android.systemui.volume.view.VolumePanelMotion$startSubVolumePanelHideAnimation$1$1
                            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                            public final void onAnimationEnd(Animator animator) {
                                subDisplayVolumePanelPresentation$$ExternalSyntheticLambda1.run();
                                subDisplayVolumePanelPresentation$$ExternalSyntheticLambda12.run();
                            }
                        });
                        ofFloat.start();
                        return;
                    }
                    dismiss();
                    return;
                }
                return;
            case 7:
                this.mArrowLeft.setVisibility(0);
                this.mArrowRight.setVisibility(8);
                return;
            case 8:
                this.mArrowLeft.setVisibility(8);
                this.mArrowRight.setVisibility(0);
                return;
            case 9:
            case 10:
                if (this.mWarningToastPopup.getVisibility() == 8) {
                    this.mWarningToastPopup.setVisibility(0);
                    return;
                }
                return;
            case 11:
            case 12:
                if (this.mWarningToastPopup.getVisibility() == 0) {
                    this.mWarningToastPopup.setVisibility(8);
                    return;
                }
                return;
            case 13:
                this.mStartProgress = true;
                return;
            case 14:
                this.mIsSeekBarTouching = true;
                return;
            case 15:
                this.mIsSeekBarTouching = false;
                return;
            case 16:
                if (isShowing() && !this.mIsDualAudio) {
                    if (this.mActiveStream != volumePanelState.getActiveStream()) {
                        i = 0;
                    }
                    if (i == 0) {
                        this.mRowContainer.removeAllViews();
                        addRow(volumePanelState);
                        return;
                    }
                    return;
                }
                return;
            default:
                return;
        }
    }

    @Override // android.app.Dialog
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        initDialog();
    }
}
