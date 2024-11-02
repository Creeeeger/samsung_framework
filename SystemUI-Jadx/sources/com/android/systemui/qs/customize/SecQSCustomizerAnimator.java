package com.android.systemui.qs.customize;

import com.android.systemui.R;
import com.android.systemui.qs.customize.setting.SecQSSettingEditResources;
import com.android.systemui.util.DeviceState;
import kotlin.collections.builders.ListBuilder;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class SecQSCustomizerAnimator {
    public final ListBuilder mActiveContents;
    public final ListBuilder mAvailableAreaContents;
    public final int mRemoveIconId = SecQSSettingEditResources.REMOVE_ICON_ID;
    public final SecQSCustomizerBase mView;
    public final int startY;

    public SecQSCustomizerAnimator(SecQSCustomizerBase secQSCustomizerBase) {
        this.mView = secQSCustomizerBase;
        this.startY = (int) (DeviceState.getDisplayHeight(secQSCustomizerBase.getContext()) * 0.0625d);
        ListBuilder listBuilder = new ListBuilder();
        listBuilder.add(secQSCustomizerBase.findViewById(R.id.qs_edit_available_text));
        listBuilder.add(secQSCustomizerBase.findViewById(R.id.qs_available_page_parent));
        listBuilder.add(secQSCustomizerBase.findViewById(R.id.qs_available_paged_indicator_container));
        listBuilder.add(secQSCustomizerBase.findViewById(R.id.qs_customize_panel_buttons_parent));
        listBuilder.add(secQSCustomizerBase.findViewById(R.id.edit_navigation_bar_view));
        listBuilder.build();
        this.mAvailableAreaContents = listBuilder;
        ListBuilder listBuilder2 = new ListBuilder();
        listBuilder2.add(secQSCustomizerBase.findViewById(R.id.qs_customizer_top_summary));
        listBuilder2.add(secQSCustomizerBase.findViewById(R.id.qs_active_empty_header));
        listBuilder2.add(secQSCustomizerBase.findViewById(R.id.qs_active_page_parent));
        listBuilder2.add(secQSCustomizerBase.findViewById(R.id.qs_active_paged_indicator_container));
        listBuilder2.build();
        this.mActiveContents = listBuilder2;
    }
}
