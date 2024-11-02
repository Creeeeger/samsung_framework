package com.android.systemui.statusbar.notification.row;

import android.R;
import android.app.NotificationChannel;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.CompoundButton;
import android.widget.LinearLayout;
import android.widget.Switch;
import android.widget.TextView;
import com.android.settingslib.Utils;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class ChannelRow extends LinearLayout {
    public NotificationChannel channel;
    public TextView channelDescription;
    public TextView channelName;
    public ChannelEditorDialogController controller;
    public final int highlightColor;

    /* renamed from: switch, reason: not valid java name */
    public Switch f9switch;

    public ChannelRow(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.highlightColor = Utils.getColorAttrDefaultColor(R.attr.colorControlHighlight, getContext(), 0);
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        this.channelName = (TextView) findViewById(com.android.systemui.R.id.channel_name);
        this.channelDescription = (TextView) findViewById(com.android.systemui.R.id.channel_description);
        Switch r0 = (Switch) findViewById(com.android.systemui.R.id.toggle);
        this.f9switch = r0;
        r0.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.android.systemui.statusbar.notification.row.ChannelRow$onFinishInflate$1
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                int i;
                int i2;
                ChannelRow channelRow = ChannelRow.this;
                NotificationChannel notificationChannel = channelRow.channel;
                if (notificationChannel != null) {
                    ChannelEditorDialogController channelEditorDialogController = channelRow.controller;
                    ChannelEditorDialog channelEditorDialog = null;
                    if (channelEditorDialogController == null) {
                        channelEditorDialogController = null;
                    }
                    boolean z2 = false;
                    if (z) {
                        i = notificationChannel.getImportance();
                    } else {
                        i = 0;
                    }
                    channelEditorDialogController.getClass();
                    int importance = notificationChannel.getImportance();
                    Map map = channelEditorDialogController.edits;
                    if (importance == i) {
                        map.remove(notificationChannel);
                    } else {
                        map.put(notificationChannel, Integer.valueOf(i));
                    }
                    ChannelEditorDialog channelEditorDialog2 = channelEditorDialogController.dialog;
                    if (channelEditorDialog2 != null) {
                        channelEditorDialog = channelEditorDialog2;
                    }
                    if ((!map.isEmpty()) || !Intrinsics.areEqual(Boolean.valueOf(channelEditorDialogController.appNotificationsEnabled), channelEditorDialogController.appNotificationsCurrentlyEnabled)) {
                        z2 = true;
                    }
                    TextView textView = (TextView) channelEditorDialog.findViewById(com.android.systemui.R.id.done_button);
                    if (textView != null) {
                        if (z2) {
                            i2 = com.android.systemui.R.string.inline_ok_button;
                        } else {
                            i2 = com.android.systemui.R.string.inline_done_button;
                        }
                        textView.setText(i2);
                    }
                }
            }
        });
        setOnClickListener(new View.OnClickListener() { // from class: com.android.systemui.statusbar.notification.row.ChannelRow$onFinishInflate$2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                Switch r02 = ChannelRow.this.f9switch;
                if (r02 == null) {
                    r02 = null;
                }
                r02.toggle();
            }
        });
    }
}
