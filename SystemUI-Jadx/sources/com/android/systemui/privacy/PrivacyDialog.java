package com.android.systemui.privacy;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.drawable.LayerDrawable;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.SemBlurInfo;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowInsets;
import android.view.WindowManager;
import android.view.WindowMetrics;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.core.graphics.PathParser$$ExternalSyntheticOutline0;
import androidx.picker.model.AppInfo$$ExternalSyntheticOutline0;
import androidx.picker.model.viewdata.AppInfoViewData$$ExternalSyntheticOutline0;
import com.android.app.motiontool.TraceMetadata$$ExternalSyntheticOutline0;
import com.android.systemui.Dependency;
import com.android.systemui.QpRune;
import com.android.systemui.R;
import com.android.systemui.privacy.PrivacyDialog;
import com.android.systemui.qs.SecQSPanelResourcePicker;
import com.android.systemui.statusbar.phone.SystemUIDialog;
import com.android.systemui.util.SettingsHelper;
import com.samsung.android.app.SemDualAppManager;
import com.samsung.android.knox.SemPersonaManager;
import com.samsung.android.view.SemWindowManager;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class PrivacyDialog extends SystemUIDialog {
    public final PrivacyDialog$clickListener$1 clickListener;
    public final List dismissListeners;
    public final AtomicBoolean dismissed;
    public final int iconColorSolid;
    public final List list;
    public ImageView mBlurView;
    public int mDialogTopMargin;
    public int mDialogTranslateX;
    public SemPersonaManager mPersonaManager;
    public final String phonecall;
    public boolean qsExpanded;
    public ViewGroup rootView;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class PrivacyElement {
        public final boolean active;
        public final CharSequence applicationName;
        public final CharSequence attributionLabel;
        public final CharSequence attributionTag;
        public final StringBuilder builder;
        public final boolean enterprise;
        public final long lastActiveTimestamp;
        public final Intent navigationIntent;
        public final String packageName;
        public final CharSequence permGroupName;
        public final boolean phoneCall;
        public final CharSequence proxyLabel;
        public final PrivacyType type;
        public final int userId;

        public PrivacyElement(PrivacyType privacyType, String str, int i, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, CharSequence charSequence4, long j, boolean z, boolean z2, boolean z3, CharSequence charSequence5, Intent intent) {
            this.type = privacyType;
            this.packageName = str;
            this.userId = i;
            this.applicationName = charSequence;
            this.attributionTag = charSequence2;
            this.attributionLabel = charSequence3;
            this.proxyLabel = charSequence4;
            this.lastActiveTimestamp = j;
            this.active = z;
            this.enterprise = z2;
            this.phoneCall = z3;
            this.permGroupName = charSequence5;
            this.navigationIntent = intent;
            StringBuilder sb = new StringBuilder("PrivacyElement(");
            this.builder = sb;
            sb.append("type=" + privacyType.getLogName());
            sb.append(", packageName=" + str);
            sb.append(", userId=" + i);
            sb.append(", appName=" + ((Object) charSequence));
            if (charSequence2 != null) {
                sb.append(", attributionTag=" + ((Object) charSequence2));
            }
            if (charSequence3 != null) {
                sb.append(", attributionLabel=" + ((Object) charSequence3));
            }
            if (charSequence4 != null) {
                sb.append(", proxyLabel=" + ((Object) charSequence4));
            }
            sb.append(", lastActive=" + j);
            if (z) {
                sb.append(", active");
            }
            if (z2) {
                sb.append(", enterprise");
            }
            if (z3) {
                sb.append(", phoneCall");
            }
            sb.append(", permGroupName=" + ((Object) charSequence5) + ")");
            if (intent != null) {
                sb.append(", navigationIntent=" + intent);
            }
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof PrivacyElement)) {
                return false;
            }
            PrivacyElement privacyElement = (PrivacyElement) obj;
            if (this.type == privacyElement.type && Intrinsics.areEqual(this.packageName, privacyElement.packageName) && this.userId == privacyElement.userId && Intrinsics.areEqual(this.applicationName, privacyElement.applicationName) && Intrinsics.areEqual(this.attributionTag, privacyElement.attributionTag) && Intrinsics.areEqual(this.attributionLabel, privacyElement.attributionLabel) && Intrinsics.areEqual(this.proxyLabel, privacyElement.proxyLabel) && this.lastActiveTimestamp == privacyElement.lastActiveTimestamp && this.active == privacyElement.active && this.enterprise == privacyElement.enterprise && this.phoneCall == privacyElement.phoneCall && Intrinsics.areEqual(this.permGroupName, privacyElement.permGroupName) && Intrinsics.areEqual(this.navigationIntent, privacyElement.navigationIntent)) {
                return true;
            }
            return false;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final int hashCode() {
            int hashCode;
            int hashCode2;
            int hashCode3;
            int hashCode4 = (this.applicationName.hashCode() + AppInfoViewData$$ExternalSyntheticOutline0.m(this.userId, AppInfo$$ExternalSyntheticOutline0.m(this.packageName, this.type.hashCode() * 31, 31), 31)) * 31;
            int i = 0;
            CharSequence charSequence = this.attributionTag;
            if (charSequence == null) {
                hashCode = 0;
            } else {
                hashCode = charSequence.hashCode();
            }
            int i2 = (hashCode4 + hashCode) * 31;
            CharSequence charSequence2 = this.attributionLabel;
            if (charSequence2 == null) {
                hashCode2 = 0;
            } else {
                hashCode2 = charSequence2.hashCode();
            }
            int i3 = (i2 + hashCode2) * 31;
            CharSequence charSequence3 = this.proxyLabel;
            if (charSequence3 == null) {
                hashCode3 = 0;
            } else {
                hashCode3 = charSequence3.hashCode();
            }
            int m = TraceMetadata$$ExternalSyntheticOutline0.m(this.lastActiveTimestamp, (i3 + hashCode3) * 31, 31);
            int i4 = 1;
            boolean z = this.active;
            int i5 = z;
            if (z != 0) {
                i5 = 1;
            }
            int i6 = (m + i5) * 31;
            boolean z2 = this.enterprise;
            int i7 = z2;
            if (z2 != 0) {
                i7 = 1;
            }
            int i8 = (i6 + i7) * 31;
            boolean z3 = this.phoneCall;
            if (!z3) {
                i4 = z3 ? 1 : 0;
            }
            int hashCode5 = (this.permGroupName.hashCode() + ((i8 + i4) * 31)) * 31;
            Intent intent = this.navigationIntent;
            if (intent != null) {
                i = intent.hashCode();
            }
            return hashCode5 + i;
        }

        public final String toString() {
            return this.builder.toString();
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public abstract /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[PrivacyType.values().length];
            try {
                iArr[PrivacyType.TYPE_LOCATION.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[PrivacyType.TYPE_CAMERA.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[PrivacyType.TYPE_MICROPHONE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[PrivacyType.TYPE_MEDIA_PROJECTION.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX WARN: Type inference failed for: r2v2, types: [com.android.systemui.privacy.PrivacyDialog$clickListener$1] */
    public PrivacyDialog(Context context, List<PrivacyElement> list, final Function4 function4) {
        super(context, R.style.SecPrivacyDialog);
        this.list = list;
        this.dismissListeners = new ArrayList();
        this.dismissed = new AtomicBoolean(false);
        this.iconColorSolid = context.getColor(R.color.privacy_chip_icon_color);
        context.getString(R.string.ongoing_privacy_dialog_enterprise);
        this.phonecall = context.getString(R.string.sec_ongoing_privacy_dialog_phonecall);
        this.clickListener = new View.OnClickListener() { // from class: com.android.systemui.privacy.PrivacyDialog$clickListener$1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                Object tag = view.getTag();
                if (tag != null) {
                    PrivacyDialog.PrivacyElement privacyElement = (PrivacyDialog.PrivacyElement) tag;
                    Function4.this.invoke(privacyElement.packageName, Integer.valueOf(privacyElement.userId), privacyElement.attributionTag, privacyElement.navigationIntent);
                }
            }
        };
    }

    @Override // com.android.systemui.statusbar.phone.SystemUIDialog, android.app.AlertDialog, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        int dimensionPixelSize;
        WindowManager windowManager;
        WindowMetrics currentWindowMetrics;
        WindowInsets windowInsets;
        int i;
        int i2;
        CharSequence charSequence;
        int qQSPanelSidePadding;
        super.onCreate(bundle);
        int dimensionPixelSize2 = getContext().getResources().getDimensionPixelSize(R.dimen.sec_privacy_dialog_top_margin);
        this.mDialogTopMargin = dimensionPixelSize2;
        if (QpRune.QUICK_TABLET) {
            SecQSPanelResourcePicker secQSPanelResourcePicker = (SecQSPanelResourcePicker) Dependency.get(SecQSPanelResourcePicker.class);
            dimensionPixelSize = getContext().getResources().getDimensionPixelSize(R.dimen.status_bar_height) + ((int) (getContext().getResources().getFloat(R.dimen.qs_header_top_margin_ratio) * secQSPanelResourcePicker.getAvailableDisplayHeight(r5)));
        } else if (getContext().getResources().getConfiguration().orientation == 1) {
            Window window = getWindow();
            if (window != null && (windowManager = window.getWindowManager()) != null && (currentWindowMetrics = windowManager.getCurrentWindowMetrics()) != null && (windowInsets = currentWindowMetrics.getWindowInsets()) != null) {
                dimensionPixelSize = windowInsets.getStableInsetTop();
            }
            dimensionPixelSize = 0;
        } else {
            if (getContext().getResources().getConfiguration().orientation == 2) {
                dimensionPixelSize = getContext().getResources().getDimensionPixelSize(R.dimen.shade_header_no_cutout_top_margin);
            }
            dimensionPixelSize = 0;
        }
        this.mDialogTopMargin = dimensionPixelSize2 + dimensionPixelSize;
        Window window2 = getWindow();
        if (window2 != null) {
            window2.getAttributes().setFitInsetsTypes(window2.getAttributes().getFitInsetsTypes());
            window2.getAttributes().receiveInsetsIgnoringZOrder = true;
            window2.getAttributes().layoutInDisplayCutoutMode = 1;
            window2.getAttributes().y = this.mDialogTopMargin;
            window2.getAttributes().x = this.mDialogTranslateX;
            window2.setDecorFitsSystemWindows(false);
            window2.setNavigationBarColor(window2.getContext().getColor(R.color.transparent));
            window2.setStatusBarColor(window2.getContext().getColor(R.color.transparent));
            window2.setNavigationBarContrastEnforced(false);
            if (window2.getContext().getResources().getConfiguration().orientation == 1) {
                qQSPanelSidePadding = window2.getContext().getResources().getDimensionPixelSize(R.dimen.sec_ongoing_appops_dialog_side_margins);
            } else if (this.qsExpanded) {
                qQSPanelSidePadding = 0;
            } else {
                SecQSPanelResourcePicker secQSPanelResourcePicker2 = (SecQSPanelResourcePicker) Dependency.get(SecQSPanelResourcePicker.class);
                Context context = window2.getContext();
                secQSPanelResourcePicker2.getClass();
                qQSPanelSidePadding = SecQSPanelResourcePicker.getQQSPanelSidePadding(context);
            }
            SecQSPanelResourcePicker secQSPanelResourcePicker3 = (SecQSPanelResourcePicker) Dependency.get(SecQSPanelResourcePicker.class);
            Context context2 = window2.getContext();
            secQSPanelResourcePicker3.getClass();
            window2.setLayout(SecQSPanelResourcePicker.getPanelWidth(context2) - (qQSPanelSidePadding * 2), -2);
            window2.setWindowAnimations(2132017168);
            window2.setGravity(49);
        }
        setContentView(R.layout.sec_privacy_dialog);
        this.mBlurView = (ImageView) requireViewById(R.id.background_blur);
        this.mPersonaManager = (SemPersonaManager) getContext().getSystemService("persona");
        this.rootView = (ViewGroup) requireViewById(R.id.root);
        Iterator it = this.list.iterator();
        while (true) {
            ViewGroup viewGroup = null;
            String string = null;
            if (it.hasNext()) {
                PrivacyElement privacyElement = (PrivacyElement) it.next();
                ViewGroup viewGroup2 = this.rootView;
                if (viewGroup2 == null) {
                    viewGroup2 = null;
                }
                LayoutInflater from = LayoutInflater.from(getContext());
                ViewGroup viewGroup3 = this.rootView;
                if (viewGroup3 == null) {
                    viewGroup3 = null;
                }
                ViewGroup viewGroup4 = (ViewGroup) from.inflate(R.layout.sec_privacy_dialog_item, viewGroup3, false);
                PrivacyType privacyType = privacyElement.type;
                Context context3 = getContext();
                int i3 = WhenMappings.$EnumSwitchMapping$0[privacyType.ordinal()];
                if (i3 != 1) {
                    if (i3 != 2) {
                        if (i3 != 3) {
                            if (i3 == 4) {
                                i = R.drawable.privacy_item_circle_media_projection;
                            } else {
                                throw new NoWhenBranchMatchedException();
                            }
                        } else {
                            i = R.drawable.sec_privacy_item_circle_microphone;
                        }
                    } else {
                        i = R.drawable.sec_privacy_item_circle_camera;
                    }
                } else {
                    i = R.drawable.sec_privacy_item_circle_location;
                }
                LayerDrawable layerDrawable = (LayerDrawable) context3.getDrawable(i);
                layerDrawable.findDrawableByLayerId(R.id.icon).setTint(this.iconColorSolid);
                ImageView imageView = (ImageView) viewGroup4.requireViewById(R.id.icon);
                imageView.setImageDrawable(layerDrawable);
                imageView.setContentDescription(privacyElement.type.getName(imageView.getContext()));
                if (privacyElement.active) {
                    i2 = R.string.sec_ongoing_privacy_dialog_using_op;
                } else {
                    i2 = R.string.sec_ongoing_privacy_dialog_recent_op;
                }
                boolean z = privacyElement.phoneCall;
                if (z) {
                    charSequence = this.phonecall;
                } else {
                    charSequence = privacyElement.applicationName;
                }
                int i4 = privacyElement.userId;
                boolean isDualAppId = SemDualAppManager.isDualAppId(i4);
                if (privacyElement.enterprise || isDualAppId) {
                    SemPersonaManager semPersonaManager = this.mPersonaManager;
                    if (semPersonaManager == null) {
                        semPersonaManager = null;
                    }
                    String containerName = semPersonaManager.getContainerName(i4, getContext());
                    if (containerName != null) {
                        charSequence = TextUtils.concat(charSequence, PathParser$$ExternalSyntheticOutline0.m("(", containerName, ")"));
                    }
                }
                CharSequence string2 = getContext().getString(i2, charSequence);
                CharSequence charSequence2 = privacyElement.attributionLabel;
                CharSequence charSequence3 = privacyElement.proxyLabel;
                if (charSequence2 != null && charSequence3 != null) {
                    string = getContext().getString(R.string.ongoing_privacy_dialog_attribution_proxy_label, charSequence2, charSequence3);
                } else if (charSequence2 != null) {
                    string = getContext().getString(R.string.ongoing_privacy_dialog_attribution_label, charSequence2);
                } else if (charSequence3 != null) {
                    string = getContext().getString(R.string.ongoing_privacy_dialog_attribution_text, charSequence3);
                }
                if (string != null) {
                    string2 = TextUtils.concat(string2, " ", string);
                }
                ((TextView) viewGroup4.requireViewById(R.id.text)).setText(string2);
                viewGroup4.setTag(privacyElement);
                if (!z) {
                    viewGroup4.setOnClickListener(this.clickListener);
                }
                viewGroup2.addView(viewGroup4);
            } else {
                ViewGroup viewGroup5 = this.rootView;
                if (viewGroup5 != null) {
                    viewGroup = viewGroup5;
                }
                viewGroup.setClipToOutline(true);
                setOnShowListener(new DialogInterface.OnShowListener() { // from class: com.android.systemui.privacy.PrivacyDialog$onCreate$4
                    @Override // android.content.DialogInterface.OnShowListener
                    public final void onShow(DialogInterface dialogInterface) {
                        int color;
                        Bitmap bitmap;
                        PrivacyDialog privacyDialog = PrivacyDialog.this;
                        ImageView imageView2 = privacyDialog.mBlurView;
                        SemBlurInfo.Builder builder = null;
                        if (imageView2 == null) {
                            imageView2 = null;
                        }
                        if (QpRune.QUICK_PANEL_BLUR) {
                            float dimensionPixelSize3 = privacyDialog.getContext().getResources().getDimensionPixelSize(R.dimen.sec_privacy_dialog_corner_radius);
                            if (((SettingsHelper) Dependency.get(SettingsHelper.class)).isReduceTransparencyEnabled()) {
                                color = privacyDialog.getContext().getResources().getColor(R.color.sec_privacy_dialog_bg_reduce_transparency);
                            } else {
                                color = privacyDialog.getContext().getResources().getColor(R.color.sec_privacy_dialog_bg);
                            }
                            int i5 = 0;
                            if (QpRune.QUICK_PANEL_BLUR_DEFAULT) {
                                builder = new SemBlurInfo.Builder(0).setRadius(120).setBackgroundColor(color).setBackgroundCornerRadius(dimensionPixelSize3);
                            } else if (QpRune.QUICK_PANEL_BLUR_MASSIVE) {
                                if (privacyDialog.getContext().getResources().getConfiguration().orientation == 1) {
                                    i5 = privacyDialog.getContext().getResources().getDimensionPixelSize(R.dimen.sec_ongoing_appops_dialog_side_margins);
                                } else if (!privacyDialog.qsExpanded) {
                                    SecQSPanelResourcePicker secQSPanelResourcePicker4 = (SecQSPanelResourcePicker) Dependency.get(SecQSPanelResourcePicker.class);
                                    Context context4 = privacyDialog.getContext();
                                    secQSPanelResourcePicker4.getClass();
                                    i5 = SecQSPanelResourcePicker.getQQSPanelSidePadding(context4);
                                }
                                SecQSPanelResourcePicker secQSPanelResourcePicker5 = (SecQSPanelResourcePicker) Dependency.get(SecQSPanelResourcePicker.class);
                                Context context5 = privacyDialog.getContext();
                                secQSPanelResourcePicker5.getClass();
                                int panelWidth = SecQSPanelResourcePicker.getPanelWidth(context5) - (i5 * 2);
                                int dimensionPixelSize4 = privacyDialog.getContext().getResources().getDimensionPixelSize(R.dimen.sec_privacy_dialog_item_height) * privacyDialog.list.size();
                                Point point = new Point();
                                Display display = privacyDialog.getContext().getDisplay();
                                Intrinsics.checkNotNull(display);
                                display.getRealSize(point);
                                int i6 = ((point.x - panelWidth) / 2) + privacyDialog.mDialogTranslateX;
                                int i7 = privacyDialog.mDialogTopMargin;
                                try {
                                    bitmap = SemWindowManager.getInstance().screenshot(((WindowManager) privacyDialog.getContext().getSystemService("window")).getDefaultDisplay().getDisplayId(), 2036, true, new Rect(i6, i7, i6 + panelWidth, i7 + dimensionPixelSize4), panelWidth, dimensionPixelSize4, false, 0, true);
                                } catch (SecurityException e) {
                                    e.printStackTrace();
                                    bitmap = null;
                                }
                                if (bitmap != null) {
                                    builder = new SemBlurInfo.Builder(1).setRadius(120).setBitmap(bitmap);
                                }
                            }
                            if (builder != null) {
                                imageView2.semSetBlurInfo(builder.build());
                            }
                        }
                        imageView2.setClipToOutline(true);
                    }
                });
                return;
            }
        }
    }

    @Override // com.android.systemui.statusbar.phone.SystemUIDialog
    public final void stop() {
        this.dismissed.set(true);
        Iterator it = ((ArrayList) this.dismissListeners).iterator();
        while (it.hasNext()) {
            WeakReference weakReference = (WeakReference) it.next();
            it.remove();
            PrivacyDialogController$onDialogDismissed$1 privacyDialogController$onDialogDismissed$1 = (PrivacyDialogController$onDialogDismissed$1) weakReference.get();
            if (privacyDialogController$onDialogDismissed$1 != null) {
                PrivacyDialogController privacyDialogController = privacyDialogController$onDialogDismissed$1.this$0;
                privacyDialogController.shadeExpansionStateManager.qsExpansionListeners.remove(privacyDialogController.shadeQsExpansionListener);
                privacyDialogController.privacyLogger.logPrivacyDialogDismissed();
                privacyDialogController.uiEventLogger.log(PrivacyDialogEvent.PRIVACY_DIALOG_DISMISSED);
                privacyDialogController.dialog = null;
            }
        }
    }
}
