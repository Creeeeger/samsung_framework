package com.android.systemui.controls.ui.util;

import android.service.controls.Control;
import android.service.controls.templates.ControlTemplate;
import android.service.controls.templates.RangeTemplate;
import android.service.controls.templates.TemperatureControlTemplate;
import android.service.controls.templates.ThumbnailTemplate;
import android.service.controls.templates.ToggleRangeTemplate;
import android.service.controls.templates.ToggleTemplate;
import androidx.recyclerview.widget.GridLayoutManager$$ExternalSyntheticOutline0;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class ControlExtension {
    public static final Companion Companion = new Companion(null);

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static StringBuilder dump(Control control) {
            boolean z;
            boolean z2;
            boolean z3;
            boolean z4;
            boolean z5;
            boolean z6;
            boolean z7;
            boolean z8;
            boolean z9;
            boolean z10;
            StringBuilder sb = new StringBuilder();
            ControlExtension.Companion.getClass();
            sb.append("id=" + control.getControlId() + "|");
            sb.append("deviceType=" + control.getDeviceType() + "|");
            sb.append("appIntent=" + control.getAppIntent().getIntent() + "|");
            CharSequence title = control.getTitle();
            boolean z11 = true;
            if (title.length() == 0) {
                z = true;
            } else {
                z = false;
            }
            Integer num = null;
            if (z) {
                title = null;
            }
            if (title != null) {
                sb.append("title=" + ((Object) title) + "|");
            }
            CharSequence subtitle = control.getSubtitle();
            if (subtitle.length() == 0) {
                z2 = true;
            } else {
                z2 = false;
            }
            if (z2) {
                subtitle = null;
            }
            if (subtitle != null) {
                sb.append("subtitle=" + ((Object) subtitle) + "|");
            }
            CharSequence structure = control.getStructure();
            if (structure != null) {
                sb.append("structure=" + ((Object) structure) + "|");
            }
            CharSequence zone = control.getZone();
            if (zone != null) {
                sb.append("zone=" + ((Object) zone) + "|");
            }
            Integer valueOf = Integer.valueOf(control.getStatus());
            if (valueOf.intValue() == 1) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (z3) {
                valueOf = null;
            }
            if (valueOf != null) {
                sb.append("status=" + valueOf.intValue() + "|");
            }
            CharSequence statusText = control.getStatusText();
            if (statusText.length() == 0) {
                z4 = true;
            } else {
                z4 = false;
            }
            if (z4) {
                statusText = null;
            }
            if (statusText != null) {
                sb.append("statusText=" + ((Object) statusText) + "|");
            }
            if (control.getCustomColor() != null) {
                sb.append("CustomColor|");
            }
            if (control.getCustomIcon() != null) {
                sb.append("CustomIcon|");
            }
            Boolean valueOf2 = Boolean.valueOf(control.isAuthRequired());
            if (valueOf2.booleanValue()) {
                valueOf2 = null;
            }
            if (valueOf2 != null) {
                ControlExtension$Companion$$ExternalSyntheticOutline0.m("isAuthRequired=", valueOf2.booleanValue(), "|", sb);
            }
            getTemplateInformation(control.getControlTemplate(), sb);
            if (control.getCustomControl().getActionIcon() != null) {
                sb.append("Action|");
            }
            Boolean valueOf3 = Boolean.valueOf(control.getCustomControl().getAllowBasicActionWhenLocked());
            if (!valueOf3.booleanValue()) {
                valueOf3 = null;
            }
            if (valueOf3 != null) {
                valueOf3.booleanValue();
                sb.append("AllowLocked|");
            }
            String customIconAnimationJson = control.getCustomControl().getCustomIconAnimationJson();
            if (customIconAnimationJson.length() == 0) {
                z5 = true;
            } else {
                z5 = false;
            }
            if (z5) {
                customIconAnimationJson = null;
            }
            if (customIconAnimationJson != null) {
                sb.append("JSON");
                Integer valueOf4 = Integer.valueOf(control.getCustomControl().getCustomIconAnimationStartFrame());
                if (valueOf4.intValue() > -1) {
                    z8 = true;
                } else {
                    z8 = false;
                }
                if (!z8) {
                    valueOf4 = null;
                }
                if (valueOf4 != null) {
                    sb.append(":SF[" + valueOf4.intValue() + "]");
                }
                Integer valueOf5 = Integer.valueOf(control.getCustomControl().getCustomIconAnimationEndFrame());
                if (valueOf5.intValue() > -1) {
                    z9 = true;
                } else {
                    z9 = false;
                }
                if (!z9) {
                    valueOf5 = null;
                }
                if (valueOf5 != null) {
                    sb.append(":EF[" + valueOf5.intValue() + "]");
                }
                Integer valueOf6 = Integer.valueOf(control.getCustomControl().getCustomIconAnimationRepeatCount());
                if (valueOf6.intValue() > -1) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                if (!z10) {
                    valueOf6 = null;
                }
                if (valueOf6 != null) {
                    sb.append(":RC[" + valueOf6.intValue() + "]");
                }
                sb.append("|");
            }
            if (control.getCustomControl().getCustomStatusIcon() != null) {
                sb.append("CustomStatusIcon|");
            }
            Integer valueOf7 = Integer.valueOf(control.getCustomControl().getLayoutType());
            if (valueOf7.intValue() == 1) {
                z6 = true;
            } else {
                z6 = false;
            }
            if (!z6) {
                valueOf7 = null;
            }
            if (valueOf7 != null) {
                sb.append("LayoutType:" + valueOf7.intValue() + "|");
            }
            Integer valueOf8 = Integer.valueOf(control.getCustomControl().getOrder());
            if (valueOf8.intValue() > 0) {
                z7 = true;
            } else {
                z7 = false;
            }
            if (!z7) {
                valueOf8 = null;
            }
            if (valueOf8 != null) {
                sb.append("Order:" + valueOf8.intValue() + "|");
            }
            Boolean valueOf9 = Boolean.valueOf(control.getCustomControl().getUseCustomIconWithoutPadding());
            if (!valueOf9.booleanValue()) {
                valueOf9 = null;
            }
            if (valueOf9 != null) {
                valueOf9.booleanValue();
                sb.append("NoPadding|");
            }
            Boolean valueOf10 = Boolean.valueOf(control.getCustomControl().getUseCustomIconWithoutShadowBg());
            if (!valueOf10.booleanValue()) {
                valueOf10 = null;
            }
            if (valueOf10 != null) {
                valueOf10.booleanValue();
                sb.append("NoShadowBg|");
            }
            Boolean valueOf11 = Boolean.valueOf(control.getCustomControl().getUseFullScreenDetailDialog());
            if (!valueOf11.booleanValue()) {
                valueOf11 = null;
            }
            if (valueOf11 != null) {
                valueOf11.booleanValue();
                sb.append("FullScreen|");
            }
            Integer valueOf12 = Integer.valueOf(control.getCustomControl().getStatusIconType());
            if (valueOf12.intValue() != 0) {
                z11 = false;
            }
            if (!z11) {
                num = valueOf12;
            }
            if (num != null) {
                sb.append("StatusIconType:" + num.intValue() + "|");
            }
            if (control.getCustomControl().getStatusTextColor() != null) {
                sb.append("StatusTextColor|");
            }
            if (control.getCustomControl().getOverlayCustomIcon() != null) {
                sb.append("overlayCustomIcon|");
            }
            return sb;
        }

        public static void getTemplateInformation(ControlTemplate controlTemplate, StringBuilder sb) {
            sb.append("id=" + controlTemplate.getTemplateId());
            int templateType = controlTemplate.getTemplateType();
            if (templateType != -1) {
                if (templateType != 0) {
                    if (templateType != 1) {
                        if (templateType != 2) {
                            if (templateType != 3) {
                                if (templateType != 6) {
                                    if (templateType != 7) {
                                        if (templateType != 8) {
                                            sb.append("[UNKNOWN],type=" + controlTemplate.getTemplateType() + "|");
                                            return;
                                        }
                                        sb.append("[STATELESS]|");
                                        return;
                                    }
                                    TemperatureControlTemplate temperatureControlTemplate = (TemperatureControlTemplate) controlTemplate;
                                    int currentMode = temperatureControlTemplate.getCurrentMode();
                                    int currentActiveMode = temperatureControlTemplate.getCurrentActiveMode();
                                    int modes = temperatureControlTemplate.getModes();
                                    StringBuilder m = GridLayoutManager$$ExternalSyntheticOutline0.m("[TEMPERATURE],mode=", currentMode, ",activeMode=", currentActiveMode, ",modes=");
                                    m.append(modes);
                                    m.append("|");
                                    sb.append(m.toString());
                                    Companion companion = ControlExtension.Companion;
                                    ControlTemplate template = temperatureControlTemplate.getTemplate();
                                    companion.getClass();
                                    getTemplateInformation(template, sb);
                                    return;
                                }
                                ToggleRangeTemplate toggleRangeTemplate = (ToggleRangeTemplate) controlTemplate;
                                ControlExtension$Companion$$ExternalSyntheticOutline0.m("[TOGGLE_RANGE],checked=", toggleRangeTemplate.isChecked(), "|", sb);
                                Companion companion2 = ControlExtension.Companion;
                                RangeTemplate range = toggleRangeTemplate.getRange();
                                companion2.getClass();
                                getTemplateInformation(range, sb);
                                return;
                            }
                            ControlExtension$Companion$$ExternalSyntheticOutline0.m("[THUMBNAIL],active=", ((ThumbnailTemplate) controlTemplate).isActive(), "|", sb);
                            return;
                        }
                        sb.append("[RANGE],value=" + ((RangeTemplate) controlTemplate).getCurrentValue() + "|");
                        return;
                    }
                    ControlExtension$Companion$$ExternalSyntheticOutline0.m("[TOGGLE],checked=", ((ToggleTemplate) controlTemplate).isChecked(), "|", sb);
                    return;
                }
                sb.append("[NO_TEMPLATE]|");
                return;
            }
            sb.append("[ERROR]|");
        }
    }
}
