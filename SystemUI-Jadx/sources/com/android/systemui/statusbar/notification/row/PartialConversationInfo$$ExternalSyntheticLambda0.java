package com.android.systemui.statusbar.notification.row;

import android.view.View;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class PartialConversationInfo$$ExternalSyntheticLambda0 implements View.OnClickListener {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ PartialConversationInfo f$0;

    public /* synthetic */ PartialConversationInfo$$ExternalSyntheticLambda0(PartialConversationInfo partialConversationInfo, int i) {
        this.$r8$classId = i;
        this.f$0 = partialConversationInfo;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        ChannelEditorDialogController channelEditorDialogController;
        switch (this.$r8$classId) {
            case 0:
                this.f$0.mGutsContainer.closeControls(view, false);
                return;
            default:
                final PartialConversationInfo partialConversationInfo = this.f$0;
                if (!partialConversationInfo.mPresentingChannelEditorDialog && (channelEditorDialogController = partialConversationInfo.mChannelEditorDialogController) != null) {
                    partialConversationInfo.mPresentingChannelEditorDialog = true;
                    channelEditorDialogController.prepareDialogForApp(partialConversationInfo.mAppName, partialConversationInfo.mPackageName, partialConversationInfo.mAppUid, partialConversationInfo.mUniqueChannelsInRow, partialConversationInfo.mPkgIcon, partialConversationInfo.mOnSettingsClickListener);
                    ChannelEditorDialogController channelEditorDialogController2 = partialConversationInfo.mChannelEditorDialogController;
                    channelEditorDialogController2.onFinishListener = new OnChannelEditorDialogFinishedListener() { // from class: com.android.systemui.statusbar.notification.row.PartialConversationInfo$$ExternalSyntheticLambda2
                        @Override // com.android.systemui.statusbar.notification.row.OnChannelEditorDialogFinishedListener
                        public final void onChannelEditorDialogFinished() {
                            PartialConversationInfo partialConversationInfo2 = PartialConversationInfo.this;
                            partialConversationInfo2.mPresentingChannelEditorDialog = false;
                            partialConversationInfo2.mGutsContainer.closeControls(partialConversationInfo2, false);
                        }
                    };
                    if (channelEditorDialogController2.prepared) {
                        ChannelEditorDialog channelEditorDialog = channelEditorDialogController2.dialog;
                        if (channelEditorDialog == null) {
                            channelEditorDialog = null;
                        }
                        channelEditorDialog.show();
                        return;
                    }
                    throw new IllegalStateException("Must call prepareDialogForApp() before calling show()");
                }
                return;
        }
    }
}
