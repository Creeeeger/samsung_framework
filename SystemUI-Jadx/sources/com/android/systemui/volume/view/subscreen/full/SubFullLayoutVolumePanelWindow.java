package com.android.systemui.volume.view.subscreen.full;

import android.app.Dialog;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.PowerManager;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowInsets;
import android.view.WindowManager;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.Space;
import android.widget.TextView;
import com.android.systemui.Dependency;
import com.android.systemui.R;
import com.android.systemui.basic.util.LogWrapper;
import com.android.systemui.util.SettingsHelper;
import com.android.systemui.volume.VolumeDependencyBase;
import com.android.systemui.volume.store.StoreInteractor;
import com.android.systemui.volume.store.VolumePanelStore;
import com.android.systemui.volume.util.ColorUtils;
import com.android.systemui.volume.util.ContextUtils;
import com.android.systemui.volume.util.HandlerWrapper;
import com.android.systemui.volume.util.IDisplayManagerWrapper;
import com.android.systemui.volume.util.PluginAODManagerWrapper;
import com.android.systemui.volume.util.PowerManagerWrapper;
import com.android.systemui.volume.util.VibratorWrapper;
import com.android.systemui.volume.util.ViewVisibilityUtil;
import com.android.systemui.volume.view.expand.VolumePanelExpandView$adjustTouchEventForOutsideTouch$1$$ExternalSyntheticOutline0;
import com.samsung.android.nexus.video.VideoPlayer;
import com.samsung.systemui.splugins.extensions.VolumePanelStateExt;
import com.samsung.systemui.splugins.volume.VolumeInfraMediator;
import com.samsung.systemui.splugins.volume.VolumeObserver;
import com.samsung.systemui.splugins.volume.VolumePanelAction;
import com.samsung.systemui.splugins.volume.VolumePanelRow;
import com.samsung.systemui.splugins.volume.VolumePanelState;
import kotlin.Lazy;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class SubFullLayoutVolumePanelWindow extends Dialog implements VolumeObserver {
    public static final /* synthetic */ int $r8$clinit = 0;
    public final VolumeInfraMediator infraMediator;
    public final LogWrapper log;
    public final SubFullLayoutVolumePanelView panelView;
    public final Lazy store$delegate;
    public final Lazy storeInteractor$delegate;
    public final VolumeDependencyBase volDeps;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public abstract /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[VolumePanelState.StateType.values().length];
            try {
                iArr[VolumePanelState.StateType.STATE_SHOW_SUB_DISPLAY_VOLUME_PANEL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[VolumePanelState.StateType.STATE_DUAL_PLAY_MODE_CHANGED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[VolumePanelState.StateType.STATE_OPEN_THEME_CHANGED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[VolumePanelState.StateType.STATE_DISMISS_VOLUME_PANEL.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[VolumePanelState.StateType.STATE_DISMISS.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[VolumePanelState.StateType.STATE_FOLDER_STATE_CHANGED.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[VolumePanelState.StateType.STATE_ORIENTATION_CHANGED.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[VolumePanelState.StateType.STATE_COVER_STATE_CHANGED.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr[VolumePanelState.StateType.STATE_EXPAND_STATE_CHANGED.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    static {
        new Companion(null);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public SubFullLayoutVolumePanelWindow(com.android.systemui.volume.VolumeDependencyBase r11) {
        /*
            Method dump skipped, instructions count: 573
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.volume.view.subscreen.full.SubFullLayoutVolumePanelWindow.<init>(com.android.systemui.volume.VolumeDependencyBase):void");
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public final boolean dispatchTouchEvent(MotionEvent motionEvent) {
        this.panelView.dispatchTouchEvent(motionEvent);
        return true;
    }

    public final void observeStore() {
        ((StoreInteractor) this.storeInteractor$delegate.getValue()).observeStore();
        SubFullLayoutVolumePanelView subFullLayoutVolumePanelView = this.panelView;
        subFullLayoutVolumePanelView.storeInteractor.observeStore();
        SubFullLayoutVolumePanelMotion subFullLayoutVolumePanelMotion = subFullLayoutVolumePanelView.volumePanelMotion;
        if (subFullLayoutVolumePanelMotion == null) {
            subFullLayoutVolumePanelMotion = null;
        }
        VolumePanelStore store = subFullLayoutVolumePanelView.getStore();
        Context context = subFullLayoutVolumePanelView.getContext();
        subFullLayoutVolumePanelMotion.storeInteractor.store = store;
        subFullLayoutVolumePanelMotion.context = context;
    }

    @Override // com.samsung.systemui.splugins.volume.VolumeObserver
    public final void onChanged(Object obj) {
        Drawable drawable;
        boolean z;
        int i;
        View.OnClickListener onClickListener;
        VolumePanelState volumePanelState = (VolumePanelState) obj;
        Dialog dialog = null;
        switch (WhenMappings.$EnumSwitchMapping$0[volumePanelState.getStateType().ordinal()]) {
            case 1:
                Window window = getWindow();
                if (window != null) {
                    WindowManager.LayoutParams attributes = window.getAttributes();
                    if (this.infraMediator.isSupportTvVolumeSync()) {
                        attributes.semAddExtensionFlags(VideoPlayer.MEDIA_ERROR_SYSTEM);
                    } else {
                        attributes.semClearExtensionFlags(VideoPlayer.MEDIA_ERROR_SYSTEM);
                    }
                    window.setAttributes(attributes);
                    Unit unit = Unit.INSTANCE;
                }
                final SubFullLayoutVolumePanelView subFullLayoutVolumePanelView = this.panelView;
                VolumePanelState volumePanelState2 = ((VolumePanelStore) this.store$delegate.getValue()).currentState;
                subFullLayoutVolumePanelView.getClass();
                subFullLayoutVolumePanelView.isLockscreen = volumePanelState2.isLockscreen();
                subFullLayoutVolumePanelView.isDualViewEnabled = VolumePanelStateExt.isDualViewEnabled(volumePanelState2);
                HandlerWrapper handlerWrapper = subFullLayoutVolumePanelView.handlerWrapper;
                if (handlerWrapper == null) {
                    handlerWrapper = null;
                }
                IDisplayManagerWrapper iDisplayManagerWrapper = subFullLayoutVolumePanelView.iDisplayManagerWrapper;
                if (iDisplayManagerWrapper == null) {
                    iDisplayManagerWrapper = null;
                }
                ((Handler) handlerWrapper.mainThreadHandler$delegate.getValue()).post(iDisplayManagerWrapper.refreshRateLimitOnRunnable);
                if (VolumePanelStateExt.isAODVolumePanel(volumePanelState2)) {
                    ViewGroup viewGroup = subFullLayoutVolumePanelView.volumePanelView;
                    if (viewGroup == null) {
                        viewGroup = null;
                    }
                    subFullLayoutVolumePanelView.rowContainer = (ViewGroup) viewGroup.findViewById(R.id.volume_panel_row_container);
                    ViewGroup viewGroup2 = subFullLayoutVolumePanelView.volumePanelView;
                    if (viewGroup2 == null) {
                        viewGroup2 = null;
                    }
                    subFullLayoutVolumePanelView.expandButton = (ImageView) viewGroup2.findViewById(R.id.volume_panel_expand_button);
                } else if (subFullLayoutVolumePanelView.isDualViewEnabled) {
                    ViewGroup viewGroup3 = subFullLayoutVolumePanelView.volumePanelDualView;
                    if (viewGroup3 == null) {
                        viewGroup3 = null;
                    }
                    subFullLayoutVolumePanelView.rowContainer = (ViewGroup) viewGroup3.findViewById(R.id.volume_panel_row_container);
                    ViewGroup viewGroup4 = subFullLayoutVolumePanelView.volumePanelDualView;
                    if (viewGroup4 == null) {
                        viewGroup4 = null;
                    }
                    subFullLayoutVolumePanelView.expandButton = (ImageView) viewGroup4.findViewById(R.id.volume_panel_expand_button);
                    ViewGroup viewGroup5 = subFullLayoutVolumePanelView.volumePanelDualView;
                    if (viewGroup5 == null) {
                        viewGroup5 = null;
                    }
                    subFullLayoutVolumePanelView.dualViewTitle = (TextView) viewGroup5.findViewById(R.id.volume_panel_dual_view_title);
                } else {
                    ViewGroup viewGroup6 = subFullLayoutVolumePanelView.volumePanelView;
                    if (viewGroup6 == null) {
                        viewGroup6 = null;
                    }
                    subFullLayoutVolumePanelView.rowContainer = (ViewGroup) viewGroup6.findViewById(R.id.volume_panel_row_container);
                    ViewGroup viewGroup7 = subFullLayoutVolumePanelView.volumePanelView;
                    if (viewGroup7 == null) {
                        viewGroup7 = null;
                    }
                    subFullLayoutVolumePanelView.expandButton = (ImageView) viewGroup7.findViewById(R.id.volume_panel_expand_button);
                }
                if (VolumePanelStateExt.isAODVolumePanel(volumePanelState2)) {
                    ViewGroup viewGroup8 = subFullLayoutVolumePanelView.volumeAODPanelView;
                    if (viewGroup8 == null) {
                        viewGroup8 = null;
                    }
                    ViewGroup.LayoutParams layoutParams = viewGroup8.getLayoutParams();
                    layoutParams.width = ContextUtils.getDisplayWidth(subFullLayoutVolumePanelView.getContext());
                    layoutParams.height = ContextUtils.getDisplayHeight(subFullLayoutVolumePanelView.getContext());
                    ViewGroup viewGroup9 = subFullLayoutVolumePanelView.volumeAODPanelView;
                    if (viewGroup9 == null) {
                        viewGroup9 = null;
                    }
                    viewGroup9.setLayoutParams(layoutParams);
                    ViewGroup viewGroup10 = subFullLayoutVolumePanelView.volumePanelView;
                    if (viewGroup10 == null) {
                        viewGroup10 = null;
                    }
                    Dialog dialog2 = subFullLayoutVolumePanelView.dialog;
                    if (dialog2 == null) {
                        dialog2 = null;
                    }
                    Window window2 = dialog2.getWindow();
                    Intrinsics.checkNotNull(window2);
                    viewGroup10.setPadding(0, window2.getAttributes().y, 0, 0);
                } else {
                    ViewGroup viewGroup11 = subFullLayoutVolumePanelView.volumePanelView;
                    if (viewGroup11 == null) {
                        viewGroup11 = null;
                    }
                    viewGroup11.setPadding(0, 0, 0, 0);
                }
                subFullLayoutVolumePanelView.initViewVisibility(volumePanelState2);
                if (VolumePanelStateExt.isAODVolumePanel(volumePanelState2)) {
                    VolumePanelRow findRow = VolumePanelStateExt.INSTANCE.findRow(volumePanelState2, volumePanelState2.getActiveStream());
                    if (findRow != null) {
                        subFullLayoutVolumePanelView.currentVolume = findRow.getRealLevel();
                    }
                    VibratorWrapper vibratorWrapper = subFullLayoutVolumePanelView.vibratorWrapper;
                    if (vibratorWrapper == null) {
                        vibratorWrapper = null;
                    }
                    vibratorWrapper.vibrate();
                }
                if (subFullLayoutVolumePanelView.isDualViewEnabled) {
                    TextView textView = subFullLayoutVolumePanelView.dualViewTitle;
                    if (textView == null) {
                        textView = null;
                    }
                    textView.setText(subFullLayoutVolumePanelView.getContext().getString(R.string.volume_panel_view_title));
                    ViewGroup viewGroup12 = subFullLayoutVolumePanelView.volumePanelDualView;
                    if (viewGroup12 == null) {
                        viewGroup12 = null;
                    }
                    ViewGroup viewGroup13 = (ViewGroup) viewGroup12.findViewById(R.id.volume_panel_dual_view_background);
                    if (((SettingsHelper) Dependency.get(SettingsHelper.class)).isReduceTransparencyEnabled()) {
                        drawable = subFullLayoutVolumePanelView.getContext().getDrawable(R.drawable.sub_full_volume_panel_expand_bg_reduce_transparency);
                    } else {
                        drawable = subFullLayoutVolumePanelView.getContext().getDrawable(R.drawable.sub_full_volume_panel_expand_bg_blur);
                    }
                    viewGroup13.setBackground(drawable);
                }
                ImageView imageView = subFullLayoutVolumePanelView.expandButton;
                if (imageView == null) {
                    imageView = null;
                }
                imageView.setContentDescription(subFullLayoutVolumePanelView.getContext().getString(R.string.sec_qs_media_player_expand_content_description));
                ImageView imageView2 = subFullLayoutVolumePanelView.expandButton;
                if (imageView2 == null) {
                    imageView2 = null;
                }
                imageView2.setOnClickListener(new View.OnClickListener() { // from class: com.android.systemui.volume.view.subscreen.full.SubFullLayoutVolumePanelView$initExpandButton$1
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        VolumePanelExpandView$adjustTouchEventForOutsideTouch$1$$ExternalSyntheticOutline0.m(new VolumePanelAction.Builder(VolumePanelAction.ActionType.ACTION_EXPAND_BUTTON_CLICKED), true, SubFullLayoutVolumePanelView.this.storeInteractor, false);
                    }
                });
                ImageView imageView3 = subFullLayoutVolumePanelView.expandButton;
                if (imageView3 == null) {
                    imageView3 = null;
                }
                imageView3.setClickable(volumePanelState2.isShowA11yStream());
                subFullLayoutVolumePanelView.addVolumeRows(volumePanelState2);
                Dialog dialog3 = subFullLayoutVolumePanelView.dialog;
                if (dialog3 == null) {
                    dialog3 = null;
                }
                Window window3 = dialog3.getWindow();
                Intrinsics.checkNotNull(window3);
                window3.getDecorView().setAlpha(0.0f);
                Dialog dialog4 = subFullLayoutVolumePanelView.dialog;
                if (dialog4 != null) {
                    dialog = dialog4;
                }
                dialog.show();
                return;
            case 2:
            case 3:
            case 4:
            case 5:
                if (volumePanelState.isShowingSubDisplayVolumePanel() && isShowing()) {
                    this.panelView.startDismissAnimation();
                    return;
                }
                return;
            case 6:
            case 7:
            case 8:
                if (isShowing()) {
                    dismiss();
                    return;
                }
                return;
            case 9:
                this.panelView.startDismissAnimation();
                SubFullLayoutVolumePanelExpandWindow subFullLayoutVolumePanelExpandWindow = new SubFullLayoutVolumePanelExpandWindow(this.volDeps);
                Window window4 = subFullLayoutVolumePanelExpandWindow.getWindow();
                if (window4 != null) {
                    WindowManager.LayoutParams attributes2 = window4.getAttributes();
                    attributes2.setFitInsetsTypes(WindowInsets.Type.navigationBars());
                    window4.setAttributes(attributes2);
                    Unit unit2 = Unit.INSTANCE;
                }
                final SubFullLayoutVolumePanelExpandView subFullLayoutVolumePanelExpandView = subFullLayoutVolumePanelExpandWindow.panelView;
                VolumePanelState volumePanelState3 = ((VolumePanelStore) subFullLayoutVolumePanelExpandWindow.store$delegate.getValue()).currentState;
                subFullLayoutVolumePanelExpandView.rowContainer = (ViewGroup) ((ViewGroup) subFullLayoutVolumePanelExpandView.findViewById(R.id.volume_panel_expand_view)).findViewById(R.id.volume_row_container);
                subFullLayoutVolumePanelExpandView.addRows(volumePanelState3);
                Space space = (Space) subFullLayoutVolumePanelExpandView.findViewById(R.id.volume_panel_expand_bottom_space);
                ViewGroup viewGroup14 = (ViewGroup) subFullLayoutVolumePanelExpandView.findViewById(R.id.volume_panel_status_message_layout);
                TextView textView2 = (TextView) subFullLayoutVolumePanelExpandView.findViewById(R.id.volume_panel_status_message_description);
                ImageView imageView4 = (ImageView) subFullLayoutVolumePanelExpandView.findViewById(R.id.volume_panel_status_message_icon);
                imageView4.setImageTintList(ColorUtils.getSingleColorStateList(R.color.volume_panel_status_message_color, subFullLayoutVolumePanelExpandView.getContext()));
                boolean z2 = true;
                if (!volumePanelState3.isAllSoundOff() && !volumePanelState3.isZenMode() && !volumePanelState3.isLeBroadcasting()) {
                    z = false;
                } else {
                    z = true;
                }
                ViewVisibilityUtil viewVisibilityUtil = ViewVisibilityUtil.INSTANCE;
                viewVisibilityUtil.getClass();
                if (z) {
                    ViewVisibilityUtil.setGone(space);
                } else {
                    space.setVisibility(0);
                }
                if (z) {
                    viewVisibilityUtil.getClass();
                    viewGroup14.setVisibility(0);
                } else {
                    viewVisibilityUtil.getClass();
                    ViewVisibilityUtil.setGone(viewGroup14);
                }
                if (z) {
                    if (volumePanelState3.isAllSoundOff()) {
                        i = R.string.volume_mute_all_sounds_on;
                    } else if (volumePanelState3.isZenMode()) {
                        i = R.string.volume_zen_mode_on;
                    } else {
                        i = R.string.volume_panel_broadcasting_sound_using_auracast;
                    }
                    textView2.setText(subFullLayoutVolumePanelExpandView.getContext().getString(i));
                    if (!volumePanelState3.isAllSoundOff() && !volumePanelState3.isZenMode()) {
                        if (volumePanelState3.isLeBroadcasting()) {
                            imageView4.setImageDrawable(subFullLayoutVolumePanelExpandView.getContext().getResources().getDrawable(R.drawable.ic_auracast, null));
                            viewGroup14.setOnClickListener(new View.OnClickListener() { // from class: com.android.systemui.volume.view.subscreen.full.SubFullLayoutVolumePanelExpandView$updateStatusMsgArea$2
                                @Override // android.view.View.OnClickListener
                                public final void onClick(View view) {
                                    VolumePanelExpandView$adjustTouchEventForOutsideTouch$1$$ExternalSyntheticOutline0.m(new VolumePanelAction.Builder(VolumePanelAction.ActionType.ACTION_STATUS_LE_BROADCASTING_MESSAGE_CLICKED), true, SubFullLayoutVolumePanelExpandView.this.storeInteractor, false);
                                }
                            });
                        }
                    } else {
                        imageView4.setImageDrawable(subFullLayoutVolumePanelExpandView.getContext().getResources().getDrawable(R.drawable.ic_volume_control_dnd, null));
                        if (volumePanelState3.isAllSoundOff()) {
                            onClickListener = new View.OnClickListener() { // from class: com.android.systemui.volume.view.subscreen.full.SubFullLayoutVolumePanelExpandView$updateStatusMsgArea$1
                                @Override // android.view.View.OnClickListener
                                public final void onClick(View view) {
                                    VolumePanelExpandView$adjustTouchEventForOutsideTouch$1$$ExternalSyntheticOutline0.m(new VolumePanelAction.Builder(VolumePanelAction.ActionType.ACTION_STATUS_MESSAGE_CLICKED), true, SubFullLayoutVolumePanelExpandView.this.storeInteractor, false);
                                }
                            };
                        } else {
                            onClickListener = null;
                        }
                        viewGroup14.setOnClickListener(onClickListener);
                    }
                }
                int dimenInt = ContextUtils.getDimenInt(R.dimen.sub_full_volume_panel_expand_width, subFullLayoutVolumePanelExpandView.getContext());
                int dimenInt2 = ContextUtils.getDimenInt(R.dimen.sub_full_volume_panel_expand_height, subFullLayoutVolumePanelExpandView.getContext());
                int dimenInt3 = ContextUtils.getDimenInt(R.dimen.sub_full_volume_panel_expand_height_with_msg, subFullLayoutVolumePanelExpandView.getContext());
                if (!volumePanelState3.isZenMode() && !volumePanelState3.isAllSoundOff()) {
                    z2 = false;
                }
                ViewGroup viewGroup15 = (ViewGroup) subFullLayoutVolumePanelExpandView.findViewById(R.id.volume_panel_expand_view_background);
                ViewGroup viewGroup16 = (ViewGroup) subFullLayoutVolumePanelExpandView.findViewById(R.id.volume_panel_expand_view_background_stroke);
                ViewGroup.LayoutParams layoutParams2 = viewGroup15.getLayoutParams();
                layoutParams2.width = dimenInt;
                if (z2) {
                    dimenInt2 = dimenInt3;
                }
                layoutParams2.height = dimenInt2;
                viewGroup15.setLayoutParams(layoutParams2);
                if (((SettingsHelper) Dependency.get(SettingsHelper.class)).isReduceTransparencyEnabled()) {
                    viewGroup15.setBackground(subFullLayoutVolumePanelExpandView.getContext().getDrawable(R.drawable.sub_full_volume_panel_expand_bg_reduce_transparency));
                    viewVisibilityUtil.getClass();
                    ViewVisibilityUtil.setGone(viewGroup16);
                } else {
                    viewGroup15.setBackground(subFullLayoutVolumePanelExpandView.getContext().getDrawable(R.drawable.sub_full_volume_panel_expand_bg_blur));
                    boolean isNightMode = ContextUtils.isNightMode(subFullLayoutVolumePanelExpandView.getContext());
                    viewVisibilityUtil.getClass();
                    if (isNightMode) {
                        ViewVisibilityUtil.setGone(viewGroup16);
                    } else {
                        viewGroup16.setVisibility(0);
                    }
                }
                subFullLayoutVolumePanelExpandView.setOnTouchListener(new View.OnTouchListener() { // from class: com.android.systemui.volume.view.subscreen.full.SubFullLayoutVolumePanelExpandView$adjustTouchEventForOutsideTouch$1
                    @Override // android.view.View.OnTouchListener
                    public final boolean onTouch(View view, MotionEvent motionEvent) {
                        VolumePanelExpandView$adjustTouchEventForOutsideTouch$1$$ExternalSyntheticOutline0.m(new VolumePanelAction.Builder(VolumePanelAction.ActionType.ACTION_TOUCH_OUTSIDE), true, SubFullLayoutVolumePanelExpandView.this.storeInteractor, true);
                        return true;
                    }
                });
                ViewGroup viewGroup17 = subFullLayoutVolumePanelExpandView.contentsView;
                if (viewGroup17 == null) {
                    viewGroup17 = null;
                }
                viewGroup17.setOnTouchListener(new View.OnTouchListener() { // from class: com.android.systemui.volume.view.subscreen.full.SubFullLayoutVolumePanelExpandView$adjustTouchEventForOutsideTouch$2
                    @Override // android.view.View.OnTouchListener
                    public final boolean onTouch(View view, MotionEvent motionEvent) {
                        return true;
                    }
                });
                Dialog dialog5 = subFullLayoutVolumePanelExpandView.dialog;
                if (dialog5 == null) {
                    dialog5 = null;
                }
                Window window5 = dialog5.getWindow();
                Intrinsics.checkNotNull(window5);
                window5.getDecorView().setAlpha(0.0f);
                Dialog dialog6 = subFullLayoutVolumePanelExpandView.dialog;
                if (dialog6 == null) {
                    dialog6 = null;
                }
                Window window6 = dialog6.getWindow();
                Intrinsics.checkNotNull(window6);
                window6.getDecorView().setScaleX(0.95f);
                Dialog dialog7 = subFullLayoutVolumePanelExpandView.dialog;
                if (dialog7 == null) {
                    dialog7 = null;
                }
                Window window7 = dialog7.getWindow();
                Intrinsics.checkNotNull(window7);
                window7.getDecorView().setScaleY(0.95f);
                ImageButton imageButton = subFullLayoutVolumePanelExpandView.liveCaptionButton;
                if (imageButton == null) {
                    imageButton = null;
                }
                viewVisibilityUtil.getClass();
                ViewVisibilityUtil.setGone(imageButton);
                VolumePanelRow findRow2 = VolumePanelStateExt.INSTANCE.findRow(volumePanelState3, volumePanelState3.getActiveStream());
                if (findRow2 != null) {
                    subFullLayoutVolumePanelExpandView.updateVolumeTitle(findRow2.getStreamType());
                }
                if (volumePanelState3.isShowA11yStream()) {
                    Dialog dialog8 = subFullLayoutVolumePanelExpandView.dialog;
                    if (dialog8 == null) {
                        dialog8 = null;
                    }
                    Window window8 = dialog8.getWindow();
                    Intrinsics.checkNotNull(window8);
                    window8.clearFlags(8);
                }
                Dialog dialog9 = subFullLayoutVolumePanelExpandView.dialog;
                if (dialog9 != null) {
                    dialog = dialog9;
                }
                dialog.show();
                return;
            default:
                return;
        }
    }

    @Override // android.app.Dialog
    public final void onStart() {
        super.onStart();
        this.log.d("SubFullLayoutVolumePanelWindow", "onStart");
    }

    @Override // android.app.Dialog
    public final void onStop() {
        super.onStop();
        this.log.d("SubFullLayoutVolumePanelWindow", "onStop : panelState.isExpanded=" + ((VolumePanelStore) this.store$delegate.getValue()).currentState.isExpanded());
        SubFullLayoutVolumePanelView subFullLayoutVolumePanelView = this.panelView;
        HandlerWrapper handlerWrapper = subFullLayoutVolumePanelView.handlerWrapper;
        ViewGroup viewGroup = null;
        if (handlerWrapper == null) {
            handlerWrapper = null;
        }
        IDisplayManagerWrapper iDisplayManagerWrapper = subFullLayoutVolumePanelView.iDisplayManagerWrapper;
        if (iDisplayManagerWrapper == null) {
            iDisplayManagerWrapper = null;
        }
        ((Handler) handlerWrapper.mainThreadHandler$delegate.getValue()).post(iDisplayManagerWrapper.refreshRateLimitOffRunnable);
        if (VolumePanelStateExt.isAODVolumePanel(subFullLayoutVolumePanelView.getPanelState())) {
            PowerManagerWrapper powerManagerWrapper = subFullLayoutVolumePanelView.powerManagerWrapper;
            if (powerManagerWrapper == null) {
                powerManagerWrapper = null;
            }
            PowerManager.WakeLock wakeLock = powerManagerWrapper.wakeLock;
            if (wakeLock != null) {
                wakeLock.release();
            }
            powerManagerWrapper.wakeLock = null;
            PluginAODManagerWrapper pluginAODManagerWrapper = subFullLayoutVolumePanelView.pluginAODManagerWrapper;
            if (pluginAODManagerWrapper == null) {
                pluginAODManagerWrapper = null;
            }
            pluginAODManagerWrapper.getClass();
            PluginAODManagerWrapper.requestAODVolumePanel(false);
        }
        ViewGroup viewGroup2 = subFullLayoutVolumePanelView.rowContainer;
        if (viewGroup2 != null) {
            viewGroup = viewGroup2;
        }
        viewGroup.removeAllViews();
        if (!((VolumePanelStore) this.store$delegate.getValue()).currentState.isExpanded()) {
            ((StoreInteractor) this.storeInteractor$delegate.getValue()).sendAction(new VolumePanelAction.Builder(VolumePanelAction.ActionType.ACTION_DISMISS_SUB_DISPLAY_VOLUME_PANEL).build(), true);
        }
    }
}
