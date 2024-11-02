package com.android.systemui.media.dialog;

import android.app.AlertDialog;
import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothLeBroadcastAssistant;
import android.bluetooth.BluetoothLeBroadcastMetadata;
import android.bluetooth.BluetoothLeBroadcastReceiveState;
import android.content.Context;
import android.content.DialogInterface;
import android.media.MediaMetadata;
import android.media.session.MediaController;
import android.os.Bundle;
import android.support.v4.media.MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;
import android.text.Editable;
import android.text.TextWatcher;
import android.text.method.HideReturnsTransformationMethod;
import android.text.method.PasswordTransformationMethod;
import android.text.method.TransformationMethod;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.widget.ListPopupWindow$$ExternalSyntheticOutline0;
import androidx.core.graphics.drawable.IconCompat;
import androidx.picker.adapter.AbsAdapter$1$$ExternalSyntheticOutline0;
import com.android.settingslib.bluetooth.LocalBluetoothLeBroadcast;
import com.android.settingslib.bluetooth.LocalBluetoothLeBroadcastAssistant;
import com.android.settingslib.media.BluetoothMediaDevice;
import com.android.settingslib.media.MediaDevice;
import com.android.systemui.R;
import com.android.systemui.broadcast.BroadcastSender;
import com.android.systemui.media.dialog.MediaOutputController;
import com.android.systemui.statusbar.phone.SystemUIDialog;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Executor;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class MediaOutputBroadcastDialog extends MediaOutputBaseDialog {
    static final int BROADCAST_CODE_MAX_LENGTH = 16;
    static final int BROADCAST_CODE_MIN_LENGTH = 4;
    static final int BROADCAST_NAME_MAX_LENGTH = 254;
    AlertDialog mAlertDialog;
    public final AnonymousClass3 mBroadcastAssistantCallback;
    public TextView mBroadcastCode;
    public final AnonymousClass1 mBroadcastCodeTextWatcher;
    public TextView mBroadcastErrorMessage;
    public TextView mBroadcastName;
    public final AnonymousClass2 mBroadcastNameTextWatcher;
    public ImageView mBroadcastQrCodeView;
    public String mCurrentBroadcastCode;
    public String mCurrentBroadcastName;
    public boolean mIsLeBroadcastAssistantCallbackRegistered;
    public Boolean mIsPasswordHide;
    public boolean mIsStopbyUpdateBroadcastCode;
    public int mRetryCount;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.media.dialog.MediaOutputBroadcastDialog$3, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass3 implements BluetoothLeBroadcastAssistant.Callback {
        public AnonymousClass3() {
        }

        public final void onReceiveStateChanged(BluetoothDevice bluetoothDevice, int i, BluetoothLeBroadcastReceiveState bluetoothLeBroadcastReceiveState) {
            Log.d("MediaOutputBroadcastDialog", "Assistant-onReceiveStateChanged:");
        }

        public final void onSearchStartFailed(int i) {
            ListPopupWindow$$ExternalSyntheticOutline0.m("Assistant-onSearchStartFailed: ", i, "MediaOutputBroadcastDialog");
        }

        public final void onSearchStarted(int i) {
            ListPopupWindow$$ExternalSyntheticOutline0.m("Assistant-onSearchStarted: ", i, "MediaOutputBroadcastDialog");
        }

        public final void onSearchStopFailed(int i) {
            ListPopupWindow$$ExternalSyntheticOutline0.m("Assistant-onSearchStopFailed: ", i, "MediaOutputBroadcastDialog");
        }

        public final void onSearchStopped(int i) {
            ListPopupWindow$$ExternalSyntheticOutline0.m("Assistant-onSearchStopped: ", i, "MediaOutputBroadcastDialog");
        }

        public final void onSourceAddFailed(BluetoothDevice bluetoothDevice, BluetoothLeBroadcastMetadata bluetoothLeBroadcastMetadata, int i) {
            Log.d("MediaOutputBroadcastDialog", "Assistant-onSourceAddFailed: Device: " + bluetoothDevice);
        }

        public final void onSourceAdded(BluetoothDevice bluetoothDevice, int i, int i2) {
            Log.d("MediaOutputBroadcastDialog", "Assistant-onSourceAdded: Device: " + bluetoothDevice + ", sourceId: " + i);
            MediaOutputBroadcastDialog.this.mMainThreadHandler.post(new Runnable() { // from class: com.android.systemui.media.dialog.MediaOutputBroadcastDialog$3$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    MediaOutputBroadcastDialog mediaOutputBroadcastDialog = MediaOutputBroadcastDialog.this;
                    int i3 = MediaOutputBroadcastDialog.BROADCAST_CODE_MAX_LENGTH;
                    mediaOutputBroadcastDialog.refreshUi();
                }
            });
        }

        public final void onSourceFound(BluetoothLeBroadcastMetadata bluetoothLeBroadcastMetadata) {
            Log.d("MediaOutputBroadcastDialog", "Assistant-onSourceFound:");
        }

        public final void onSourceModified(BluetoothDevice bluetoothDevice, int i, int i2) {
            Log.d("MediaOutputBroadcastDialog", "Assistant-onSourceModified:");
        }

        public final void onSourceModifyFailed(BluetoothDevice bluetoothDevice, int i, int i2) {
            Log.d("MediaOutputBroadcastDialog", "Assistant-onSourceModifyFailed:");
        }

        public final void onSourceRemoveFailed(BluetoothDevice bluetoothDevice, int i, int i2) {
            Log.d("MediaOutputBroadcastDialog", "Assistant-onSourceRemoveFailed:");
        }

        public final void onSourceRemoved(BluetoothDevice bluetoothDevice, int i, int i2) {
            Log.d("MediaOutputBroadcastDialog", "Assistant-onSourceRemoved:");
        }
    }

    /* JADX WARN: Type inference failed for: r1v3, types: [com.android.systemui.media.dialog.MediaOutputBroadcastDialog$1] */
    /* JADX WARN: Type inference failed for: r1v4, types: [com.android.systemui.media.dialog.MediaOutputBroadcastDialog$2] */
    public MediaOutputBroadcastDialog(Context context, boolean z, BroadcastSender broadcastSender, MediaOutputController mediaOutputController) {
        super(context, broadcastSender, mediaOutputController);
        this.mIsPasswordHide = Boolean.TRUE;
        this.mRetryCount = 0;
        this.mIsStopbyUpdateBroadcastCode = false;
        this.mBroadcastCodeTextWatcher = new TextWatcher() { // from class: com.android.systemui.media.dialog.MediaOutputBroadcastDialog.1
            @Override // android.text.TextWatcher
            public final void afterTextChanged(Editable editable) {
                boolean z2;
                boolean z3;
                boolean z4;
                MediaOutputBroadcastDialog mediaOutputBroadcastDialog = MediaOutputBroadcastDialog.this;
                if (mediaOutputBroadcastDialog.mAlertDialog != null && mediaOutputBroadcastDialog.mBroadcastErrorMessage != null) {
                    int i = 4;
                    if (editable.length() > 0 && editable.length() < 4) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    if (editable.length() > 16) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    if (!z2 && !z3) {
                        z4 = false;
                    } else {
                        z4 = true;
                    }
                    if (z2) {
                        MediaOutputBroadcastDialog.this.mBroadcastErrorMessage.setText(R.string.media_output_broadcast_code_hint_no_less_than_min);
                    } else if (z3) {
                        MediaOutputBroadcastDialog mediaOutputBroadcastDialog2 = MediaOutputBroadcastDialog.this;
                        mediaOutputBroadcastDialog2.mBroadcastErrorMessage.setText(((MediaOutputBaseDialog) mediaOutputBroadcastDialog2).mContext.getResources().getString(R.string.media_output_broadcast_edit_hint_no_more_than_max, 16));
                    }
                    TextView textView = MediaOutputBroadcastDialog.this.mBroadcastErrorMessage;
                    if (z4) {
                        i = 0;
                    }
                    textView.setVisibility(i);
                    Button button = MediaOutputBroadcastDialog.this.mAlertDialog.getButton(-1);
                    if (button != null) {
                        button.setEnabled(!z4);
                    }
                }
            }

            @Override // android.text.TextWatcher
            public final void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public final void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }
        };
        this.mBroadcastNameTextWatcher = new TextWatcher() { // from class: com.android.systemui.media.dialog.MediaOutputBroadcastDialog.2
            @Override // android.text.TextWatcher
            public final void afterTextChanged(Editable editable) {
                boolean z2;
                boolean z3;
                MediaOutputBroadcastDialog mediaOutputBroadcastDialog = MediaOutputBroadcastDialog.this;
                if (mediaOutputBroadcastDialog.mAlertDialog != null && mediaOutputBroadcastDialog.mBroadcastErrorMessage != null) {
                    int i = 0;
                    if (editable.length() > 254) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    if (!z2 && editable.length() != 0) {
                        z3 = false;
                    } else {
                        z3 = true;
                    }
                    if (z2) {
                        MediaOutputBroadcastDialog mediaOutputBroadcastDialog2 = MediaOutputBroadcastDialog.this;
                        mediaOutputBroadcastDialog2.mBroadcastErrorMessage.setText(((MediaOutputBaseDialog) mediaOutputBroadcastDialog2).mContext.getResources().getString(R.string.media_output_broadcast_edit_hint_no_more_than_max, 254));
                    }
                    TextView textView = MediaOutputBroadcastDialog.this.mBroadcastErrorMessage;
                    if (!z2) {
                        i = 4;
                    }
                    textView.setVisibility(i);
                    Button button = MediaOutputBroadcastDialog.this.mAlertDialog.getButton(-1);
                    if (button != null) {
                        button.setEnabled(!z3);
                    }
                }
            }

            @Override // android.text.TextWatcher
            public final void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public final void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }
        };
        this.mBroadcastAssistantCallback = new AnonymousClass3();
        this.mAdapter = new MediaOutputAdapter(this.mMediaOutputController);
        if (!z) {
            getWindow().setType(2038);
        }
    }

    @Override // com.android.systemui.media.dialog.MediaOutputBaseDialog
    public final IconCompat getAppSourceIcon() {
        return this.mMediaOutputController.getNotificationSmallIcon();
    }

    public final String getBroadcastMetadataInfo(int i) {
        if (i != 0) {
            if (i != 1) {
                return "";
            }
            LocalBluetoothLeBroadcast localBluetoothLeBroadcast = this.mMediaOutputController.mLocalBluetoothManager.mProfileManager.mLeAudioBroadcast;
            if (localBluetoothLeBroadcast == null) {
                Log.d("MediaOutputController", "getBroadcastCode: LE Audio Broadcast is null");
                return "";
            }
            return new String(localBluetoothLeBroadcast.mBroadcastCode, StandardCharsets.UTF_8);
        }
        LocalBluetoothLeBroadcast localBluetoothLeBroadcast2 = this.mMediaOutputController.mLocalBluetoothManager.mProfileManager.mLeAudioBroadcast;
        if (localBluetoothLeBroadcast2 == null) {
            Log.d("MediaOutputController", "getBroadcastName: LE Audio Broadcast is null");
            return "";
        }
        return localBluetoothLeBroadcast2.mProgramInfo;
    }

    @Override // com.android.systemui.media.dialog.MediaOutputBaseDialog
    public final IconCompat getHeaderIcon() {
        return this.mMediaOutputController.getHeaderIcon();
    }

    @Override // com.android.systemui.media.dialog.MediaOutputBaseDialog
    public final int getHeaderIconSize() {
        return ((MediaOutputBaseDialog) this).mContext.getResources().getDimensionPixelSize(R.dimen.media_output_dialog_header_album_icon_size);
    }

    @Override // com.android.systemui.media.dialog.MediaOutputBaseDialog
    public final CharSequence getHeaderSubtitle() {
        MediaMetadata metadata;
        MediaController mediaController = this.mMediaOutputController.mMediaController;
        if (mediaController == null || (metadata = mediaController.getMetadata()) == null) {
            return null;
        }
        return metadata.getDescription().getSubtitle();
    }

    @Override // com.android.systemui.media.dialog.MediaOutputBaseDialog
    public final CharSequence getHeaderText() {
        return this.mMediaOutputController.getHeaderTitle();
    }

    public int getRetryCount() {
        return this.mRetryCount;
    }

    @Override // com.android.systemui.media.dialog.MediaOutputBaseDialog
    public final int getStopButtonVisibility() {
        return 0;
    }

    @Override // com.android.systemui.media.dialog.MediaOutputBaseDialog
    public final void handleLeBroadcastMetadataChanged() {
        Log.d("MediaOutputBroadcastDialog", "handleLeBroadcastMetadataChanged:");
        refreshUi();
    }

    @Override // com.android.systemui.media.dialog.MediaOutputBaseDialog
    public final void handleLeBroadcastStartFailed() {
        this.mMediaOutputController.setBroadcastCode(this.mCurrentBroadcastCode);
        this.mRetryCount++;
        handleUpdateFailedUi();
    }

    @Override // com.android.systemui.media.dialog.MediaOutputBaseDialog
    public final void handleLeBroadcastStarted() {
        this.mRetryCount = 0;
        AlertDialog alertDialog = this.mAlertDialog;
        if (alertDialog != null) {
            alertDialog.dismiss();
        }
        refreshUi();
    }

    @Override // com.android.systemui.media.dialog.MediaOutputBaseDialog
    public final void handleLeBroadcastStopFailed() {
        this.mMediaOutputController.setBroadcastCode(this.mCurrentBroadcastCode);
        this.mRetryCount++;
        handleUpdateFailedUi();
    }

    @Override // com.android.systemui.media.dialog.MediaOutputBaseDialog
    public final void handleLeBroadcastStopped() {
        if (this.mIsStopbyUpdateBroadcastCode) {
            this.mIsStopbyUpdateBroadcastCode = false;
            this.mRetryCount = 0;
            if (!this.mMediaOutputController.startBluetoothLeBroadcast()) {
                handleLeBroadcastStartFailed();
                return;
            }
            return;
        }
        dismiss();
    }

    @Override // com.android.systemui.media.dialog.MediaOutputBaseDialog
    public final void handleLeBroadcastUpdateFailed() {
        MediaOutputController mediaOutputController = this.mMediaOutputController;
        String str = this.mCurrentBroadcastName;
        LocalBluetoothLeBroadcast localBluetoothLeBroadcast = mediaOutputController.mLocalBluetoothManager.mProfileManager.mLeAudioBroadcast;
        if (localBluetoothLeBroadcast == null) {
            Log.d("MediaOutputController", "setBroadcastName: LE Audio Broadcast is null");
        } else {
            localBluetoothLeBroadcast.setProgramInfo(str, true);
        }
        this.mRetryCount++;
        handleUpdateFailedUi();
    }

    @Override // com.android.systemui.media.dialog.MediaOutputBaseDialog
    public final void handleLeBroadcastUpdated() {
        this.mRetryCount = 0;
        AlertDialog alertDialog = this.mAlertDialog;
        if (alertDialog != null) {
            alertDialog.dismiss();
        }
        refreshUi();
    }

    public final void handleUpdateFailedUi() {
        int i;
        boolean z;
        AlertDialog alertDialog = this.mAlertDialog;
        if (alertDialog == null) {
            Log.d("MediaOutputBroadcastDialog", "handleUpdateFailedUi: mAlertDialog is null");
            return;
        }
        if (this.mRetryCount < 3) {
            i = R.string.media_output_broadcast_update_error;
            z = true;
        } else {
            this.mRetryCount = 0;
            i = R.string.media_output_broadcast_last_update_error;
            z = false;
        }
        Button button = alertDialog.getButton(-1);
        if (button != null && z) {
            button.setEnabled(true);
        }
        TextView textView = this.mBroadcastErrorMessage;
        if (textView != null) {
            textView.setVisibility(0);
            this.mBroadcastErrorMessage.setText(i);
        }
    }

    @Override // com.android.systemui.media.dialog.MediaOutputBaseDialog
    public final boolean isBroadcastSupported() {
        boolean z;
        boolean z2;
        if (this.mMediaOutputController.getCurrentConnectedMediaDevice() != null) {
            z = this.mMediaOutputController.getCurrentConnectedMediaDevice().isBLEDevice();
        } else {
            z = false;
        }
        if (this.mMediaOutputController.mLocalBluetoothManager.mProfileManager.mLeAudioBroadcast != null) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (!z2 || !z) {
            return false;
        }
        return true;
    }

    public final void launchBroadcastUpdatedDialog(String str, final boolean z) {
        TextWatcher textWatcher;
        int i;
        View inflate = LayoutInflater.from(((MediaOutputBaseDialog) this).mContext).inflate(R.layout.media_output_broadcast_update_dialog, (ViewGroup) null);
        final EditText editText = (EditText) inflate.requireViewById(R.id.broadcast_edit_text);
        editText.setText(str);
        if (z) {
            textWatcher = this.mBroadcastCodeTextWatcher;
        } else {
            textWatcher = this.mBroadcastNameTextWatcher;
        }
        editText.addTextChangedListener(textWatcher);
        this.mBroadcastErrorMessage = (TextView) inflate.requireViewById(R.id.broadcast_error_message);
        AlertDialog.Builder builder = new AlertDialog.Builder(((MediaOutputBaseDialog) this).mContext);
        if (z) {
            i = R.string.media_output_broadcast_code;
        } else {
            i = R.string.media_output_broadcast_name;
        }
        AlertDialog create = builder.setTitle(i).setView(inflate).setNegativeButton(android.R.string.cancel, (DialogInterface.OnClickListener) null).setPositiveButton(R.string.media_output_broadcast_dialog_save, new DialogInterface.OnClickListener() { // from class: com.android.systemui.media.dialog.MediaOutputBroadcastDialog$$ExternalSyntheticLambda1
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i2) {
                MediaOutputBroadcastDialog mediaOutputBroadcastDialog = MediaOutputBroadcastDialog.this;
                boolean z2 = z;
                EditText editText2 = editText;
                mediaOutputBroadcastDialog.getClass();
                mediaOutputBroadcastDialog.updateBroadcastInfo(z2, editText2.getText().toString());
            }
        }).create();
        this.mAlertDialog = create;
        create.getWindow().setType(2009);
        SystemUIDialog.setShowForAllUsers(this.mAlertDialog);
        SystemUIDialog.registerDismissListener(this.mAlertDialog, null);
        this.mAlertDialog.show();
    }

    @Override // com.android.systemui.media.dialog.MediaOutputBaseDialog, com.android.systemui.statusbar.phone.SystemUIDialog, android.app.AlertDialog, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        ((ViewStub) this.mDialogView.requireViewById(R.id.broadcast_qrcode)).inflate();
        this.mBroadcastQrCodeView = (ImageView) this.mDialogView.requireViewById(R.id.qrcode_view);
        final int i = 0;
        ((ImageView) this.mDialogView.requireViewById(R.id.broadcast_info)).setOnClickListener(new View.OnClickListener(this) { // from class: com.android.systemui.media.dialog.MediaOutputBroadcastDialog$$ExternalSyntheticLambda0
            public final /* synthetic */ MediaOutputBroadcastDialog f$0;

            {
                this.f$0 = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TransformationMethod passwordTransformationMethod;
                switch (i) {
                    case 0:
                        this.f$0.mMediaOutputController.launchLeBroadcastNotifyDialog(MediaOutputController.BroadcastNotifyDialog.ACTION_BROADCAST_INFO_ICON, null);
                        return;
                    case 1:
                        MediaOutputBroadcastDialog mediaOutputBroadcastDialog = this.f$0;
                        mediaOutputBroadcastDialog.launchBroadcastUpdatedDialog(mediaOutputBroadcastDialog.mBroadcastName.getText().toString(), false);
                        return;
                    case 2:
                        MediaOutputBroadcastDialog mediaOutputBroadcastDialog2 = this.f$0;
                        TextView textView = mediaOutputBroadcastDialog2.mBroadcastCode;
                        if (mediaOutputBroadcastDialog2.mIsPasswordHide.booleanValue()) {
                            passwordTransformationMethod = HideReturnsTransformationMethod.getInstance();
                        } else {
                            passwordTransformationMethod = PasswordTransformationMethod.getInstance();
                        }
                        textView.setTransformationMethod(passwordTransformationMethod);
                        mediaOutputBroadcastDialog2.mIsPasswordHide = Boolean.valueOf(!mediaOutputBroadcastDialog2.mIsPasswordHide.booleanValue());
                        return;
                    default:
                        MediaOutputBroadcastDialog mediaOutputBroadcastDialog3 = this.f$0;
                        mediaOutputBroadcastDialog3.launchBroadcastUpdatedDialog(mediaOutputBroadcastDialog3.mBroadcastCode.getText().toString(), true);
                        return;
                }
            }
        });
        this.mBroadcastName = (TextView) this.mDialogView.requireViewById(R.id.broadcast_name_summary);
        final int i2 = 1;
        ((ImageView) this.mDialogView.requireViewById(R.id.broadcast_name_edit)).setOnClickListener(new View.OnClickListener(this) { // from class: com.android.systemui.media.dialog.MediaOutputBroadcastDialog$$ExternalSyntheticLambda0
            public final /* synthetic */ MediaOutputBroadcastDialog f$0;

            {
                this.f$0 = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TransformationMethod passwordTransformationMethod;
                switch (i2) {
                    case 0:
                        this.f$0.mMediaOutputController.launchLeBroadcastNotifyDialog(MediaOutputController.BroadcastNotifyDialog.ACTION_BROADCAST_INFO_ICON, null);
                        return;
                    case 1:
                        MediaOutputBroadcastDialog mediaOutputBroadcastDialog = this.f$0;
                        mediaOutputBroadcastDialog.launchBroadcastUpdatedDialog(mediaOutputBroadcastDialog.mBroadcastName.getText().toString(), false);
                        return;
                    case 2:
                        MediaOutputBroadcastDialog mediaOutputBroadcastDialog2 = this.f$0;
                        TextView textView = mediaOutputBroadcastDialog2.mBroadcastCode;
                        if (mediaOutputBroadcastDialog2.mIsPasswordHide.booleanValue()) {
                            passwordTransformationMethod = HideReturnsTransformationMethod.getInstance();
                        } else {
                            passwordTransformationMethod = PasswordTransformationMethod.getInstance();
                        }
                        textView.setTransformationMethod(passwordTransformationMethod);
                        mediaOutputBroadcastDialog2.mIsPasswordHide = Boolean.valueOf(!mediaOutputBroadcastDialog2.mIsPasswordHide.booleanValue());
                        return;
                    default:
                        MediaOutputBroadcastDialog mediaOutputBroadcastDialog3 = this.f$0;
                        mediaOutputBroadcastDialog3.launchBroadcastUpdatedDialog(mediaOutputBroadcastDialog3.mBroadcastCode.getText().toString(), true);
                        return;
                }
            }
        });
        TextView textView = (TextView) this.mDialogView.requireViewById(R.id.broadcast_code_summary);
        this.mBroadcastCode = textView;
        textView.setTransformationMethod(PasswordTransformationMethod.getInstance());
        final int i3 = 2;
        ((ImageView) this.mDialogView.requireViewById(R.id.broadcast_code_eye)).setOnClickListener(new View.OnClickListener(this) { // from class: com.android.systemui.media.dialog.MediaOutputBroadcastDialog$$ExternalSyntheticLambda0
            public final /* synthetic */ MediaOutputBroadcastDialog f$0;

            {
                this.f$0 = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TransformationMethod passwordTransformationMethod;
                switch (i3) {
                    case 0:
                        this.f$0.mMediaOutputController.launchLeBroadcastNotifyDialog(MediaOutputController.BroadcastNotifyDialog.ACTION_BROADCAST_INFO_ICON, null);
                        return;
                    case 1:
                        MediaOutputBroadcastDialog mediaOutputBroadcastDialog = this.f$0;
                        mediaOutputBroadcastDialog.launchBroadcastUpdatedDialog(mediaOutputBroadcastDialog.mBroadcastName.getText().toString(), false);
                        return;
                    case 2:
                        MediaOutputBroadcastDialog mediaOutputBroadcastDialog2 = this.f$0;
                        TextView textView2 = mediaOutputBroadcastDialog2.mBroadcastCode;
                        if (mediaOutputBroadcastDialog2.mIsPasswordHide.booleanValue()) {
                            passwordTransformationMethod = HideReturnsTransformationMethod.getInstance();
                        } else {
                            passwordTransformationMethod = PasswordTransformationMethod.getInstance();
                        }
                        textView2.setTransformationMethod(passwordTransformationMethod);
                        mediaOutputBroadcastDialog2.mIsPasswordHide = Boolean.valueOf(!mediaOutputBroadcastDialog2.mIsPasswordHide.booleanValue());
                        return;
                    default:
                        MediaOutputBroadcastDialog mediaOutputBroadcastDialog3 = this.f$0;
                        mediaOutputBroadcastDialog3.launchBroadcastUpdatedDialog(mediaOutputBroadcastDialog3.mBroadcastCode.getText().toString(), true);
                        return;
                }
            }
        });
        final int i4 = 3;
        ((ImageView) this.mDialogView.requireViewById(R.id.broadcast_code_edit)).setOnClickListener(new View.OnClickListener(this) { // from class: com.android.systemui.media.dialog.MediaOutputBroadcastDialog$$ExternalSyntheticLambda0
            public final /* synthetic */ MediaOutputBroadcastDialog f$0;

            {
                this.f$0 = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TransformationMethod passwordTransformationMethod;
                switch (i4) {
                    case 0:
                        this.f$0.mMediaOutputController.launchLeBroadcastNotifyDialog(MediaOutputController.BroadcastNotifyDialog.ACTION_BROADCAST_INFO_ICON, null);
                        return;
                    case 1:
                        MediaOutputBroadcastDialog mediaOutputBroadcastDialog = this.f$0;
                        mediaOutputBroadcastDialog.launchBroadcastUpdatedDialog(mediaOutputBroadcastDialog.mBroadcastName.getText().toString(), false);
                        return;
                    case 2:
                        MediaOutputBroadcastDialog mediaOutputBroadcastDialog2 = this.f$0;
                        TextView textView2 = mediaOutputBroadcastDialog2.mBroadcastCode;
                        if (mediaOutputBroadcastDialog2.mIsPasswordHide.booleanValue()) {
                            passwordTransformationMethod = HideReturnsTransformationMethod.getInstance();
                        } else {
                            passwordTransformationMethod = PasswordTransformationMethod.getInstance();
                        }
                        textView2.setTransformationMethod(passwordTransformationMethod);
                        mediaOutputBroadcastDialog2.mIsPasswordHide = Boolean.valueOf(!mediaOutputBroadcastDialog2.mIsPasswordHide.booleanValue());
                        return;
                    default:
                        MediaOutputBroadcastDialog mediaOutputBroadcastDialog3 = this.f$0;
                        mediaOutputBroadcastDialog3.launchBroadcastUpdatedDialog(mediaOutputBroadcastDialog3.mBroadcastCode.getText().toString(), true);
                        return;
                }
            }
        });
        refreshUi();
    }

    @Override // com.android.systemui.media.dialog.MediaOutputBaseDialog
    public final void onStopButtonClick() {
        this.mMediaOutputController.stopBluetoothLeBroadcast();
        dismiss();
    }

    /* JADX WARN: Code restructure failed: missing block: B:71:0x01d9, code lost:
    
        if (r0 == null) goto L50;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void refreshUi() {
        /*
            Method dump skipped, instructions count: 559
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.media.dialog.MediaOutputBroadcastDialog.refreshUi():void");
    }

    @Override // com.android.systemui.media.dialog.MediaOutputBaseDialog, com.android.systemui.statusbar.phone.SystemUIDialog
    public final void start() {
        BluetoothLeBroadcastMetadata latestBluetoothLeBroadcastMetadata;
        List allSources;
        boolean isEmpty;
        super.start();
        boolean z = true;
        if (!this.mIsLeBroadcastAssistantCallbackRegistered) {
            this.mIsLeBroadcastAssistantCallbackRegistered = true;
            MediaOutputController mediaOutputController = this.mMediaOutputController;
            Executor executor = this.mExecutor;
            AnonymousClass3 anonymousClass3 = this.mBroadcastAssistantCallback;
            LocalBluetoothLeBroadcastAssistant localBluetoothLeBroadcastAssistant = mediaOutputController.mLocalBluetoothManager.mProfileManager.mLeAudioBroadcastAssistant;
            if (localBluetoothLeBroadcastAssistant == null) {
                Log.d("MediaOutputController", "The broadcast assistant profile is null");
            } else {
                Log.d("MediaOutputController", "Register LE broadcast assistant callback");
                BluetoothLeBroadcastAssistant bluetoothLeBroadcastAssistant = localBluetoothLeBroadcastAssistant.mService;
                if (bluetoothLeBroadcastAssistant == null) {
                    Log.d("LocalBluetoothLeBroadcastAssistant", "The BluetoothLeBroadcast is null.");
                } else {
                    try {
                        bluetoothLeBroadcastAssistant.registerCallback(executor, anonymousClass3);
                    } catch (Exception e) {
                        AbsAdapter$1$$ExternalSyntheticOutline0.m("registerServiceCallBack : Failed to register callback. ", e, "LocalBluetoothLeBroadcastAssistant");
                    }
                }
            }
        }
        LocalBluetoothLeBroadcast localBluetoothLeBroadcast = this.mMediaOutputController.mLocalBluetoothManager.mProfileManager.mLeAudioBroadcast;
        if (localBluetoothLeBroadcast == null) {
            Log.d("MediaOutputController", "getBroadcastMetadata: LE Audio Broadcast is null");
            latestBluetoothLeBroadcastMetadata = null;
        } else {
            latestBluetoothLeBroadcastMetadata = localBluetoothLeBroadcast.getLatestBluetoothLeBroadcastMetadata();
        }
        if (latestBluetoothLeBroadcastMetadata == null) {
            Log.e("MediaOutputBroadcastDialog", "Error: There is no broadcastMetadata.");
            return;
        }
        MediaDevice currentConnectedMediaDevice = this.mMediaOutputController.getCurrentConnectedMediaDevice();
        if (currentConnectedMediaDevice != null && (currentConnectedMediaDevice instanceof BluetoothMediaDevice) && currentConnectedMediaDevice.isBLEDevice()) {
            BluetoothDevice bluetoothDevice = ((BluetoothMediaDevice) currentConnectedMediaDevice).mCachedDevice.mDevice;
            Log.d("MediaOutputBroadcastDialog", "The broadcastMetadata broadcastId: " + latestBluetoothLeBroadcastMetadata.getBroadcastId() + ", the device: " + bluetoothDevice.getAnonymizedAddress());
            LocalBluetoothLeBroadcastAssistant localBluetoothLeBroadcastAssistant2 = this.mMediaOutputController.mLocalBluetoothManager.mProfileManager.mLeAudioBroadcastAssistant;
            if (localBluetoothLeBroadcastAssistant2 == null) {
                Log.d("MediaOutputController", "The broadcast assistant profile is null");
                isEmpty = false;
            } else {
                Log.d("LocalBluetoothLeBroadcastAssistant", "getAllSources()");
                BluetoothLeBroadcastAssistant bluetoothLeBroadcastAssistant2 = localBluetoothLeBroadcastAssistant2.mService;
                if (bluetoothLeBroadcastAssistant2 == null) {
                    Log.d("LocalBluetoothLeBroadcastAssistant", "The BluetoothLeBroadcastAssistant is null");
                    allSources = new ArrayList();
                } else {
                    allSources = bluetoothLeBroadcastAssistant2.getAllSources(bluetoothDevice);
                }
                Log.d("MediaOutputController", "isThereAnyBroadcastSourceIntoSinkDevice: List size: " + allSources.size());
                isEmpty = allSources.isEmpty() ^ true;
            }
            if (isEmpty) {
                Log.d("MediaOutputBroadcastDialog", "The sink device has the broadcast source now.");
                return;
            }
            LocalBluetoothLeBroadcastAssistant localBluetoothLeBroadcastAssistant3 = this.mMediaOutputController.mLocalBluetoothManager.mProfileManager.mLeAudioBroadcastAssistant;
            if (localBluetoothLeBroadcastAssistant3 == null) {
                Log.d("MediaOutputController", "The broadcast assistant profile is null");
                z = false;
            } else {
                BluetoothLeBroadcastAssistant bluetoothLeBroadcastAssistant3 = localBluetoothLeBroadcastAssistant3.mService;
                if (bluetoothLeBroadcastAssistant3 == null) {
                    Log.d("LocalBluetoothLeBroadcastAssistant", "The BluetoothLeBroadcastAssistant is null");
                } else {
                    bluetoothLeBroadcastAssistant3.addSource(bluetoothDevice, latestBluetoothLeBroadcastMetadata, true);
                }
            }
            if (!z) {
                Log.e("MediaOutputBroadcastDialog", "Error: Source add failed");
                return;
            }
            return;
        }
        Log.e("MediaOutputBroadcastDialog", "Error: There is no active BT LE device.");
    }

    @Override // com.android.systemui.media.dialog.MediaOutputBaseDialog, com.android.systemui.statusbar.phone.SystemUIDialog
    public final void stop() {
        super.stop();
        if (this.mIsLeBroadcastAssistantCallbackRegistered) {
            this.mIsLeBroadcastAssistantCallbackRegistered = false;
            MediaOutputController mediaOutputController = this.mMediaOutputController;
            AnonymousClass3 anonymousClass3 = this.mBroadcastAssistantCallback;
            LocalBluetoothLeBroadcastAssistant localBluetoothLeBroadcastAssistant = mediaOutputController.mLocalBluetoothManager.mProfileManager.mLeAudioBroadcastAssistant;
            if (localBluetoothLeBroadcastAssistant == null) {
                Log.d("MediaOutputController", "The broadcast assistant profile is null");
                return;
            }
            Log.d("MediaOutputController", "Unregister LE broadcast assistant callback");
            BluetoothLeBroadcastAssistant bluetoothLeBroadcastAssistant = localBluetoothLeBroadcastAssistant.mService;
            if (bluetoothLeBroadcastAssistant == null) {
                Log.d("LocalBluetoothLeBroadcastAssistant", "The BluetoothLeBroadcast is null.");
                return;
            }
            try {
                bluetoothLeBroadcastAssistant.unregisterCallback(anonymousClass3);
            } catch (Exception e) {
                AbsAdapter$1$$ExternalSyntheticOutline0.m("unregisterServiceCallBack : Failed to unregister callback. ", e, "LocalBluetoothLeBroadcastAssistant");
            }
        }
    }

    public void updateBroadcastInfo(boolean z, String str) {
        Button button = this.mAlertDialog.getButton(-1);
        boolean z2 = false;
        if (button != null) {
            button.setEnabled(false);
        }
        if (z) {
            this.mIsStopbyUpdateBroadcastCode = true;
            this.mMediaOutputController.setBroadcastCode(str);
            if (!this.mMediaOutputController.stopBluetoothLeBroadcast()) {
                handleLeBroadcastStopFailed();
                return;
            }
            return;
        }
        LocalBluetoothLeBroadcast localBluetoothLeBroadcast = this.mMediaOutputController.mLocalBluetoothManager.mProfileManager.mLeAudioBroadcast;
        if (localBluetoothLeBroadcast == null) {
            Log.d("MediaOutputController", "setBroadcastName: LE Audio Broadcast is null");
        } else {
            localBluetoothLeBroadcast.setProgramInfo(str, true);
        }
        MediaOutputController mediaOutputController = this.mMediaOutputController;
        LocalBluetoothLeBroadcast localBluetoothLeBroadcast2 = mediaOutputController.mLocalBluetoothManager.mProfileManager.mLeAudioBroadcast;
        if (localBluetoothLeBroadcast2 == null) {
            Log.d("MediaOutputController", "The broadcast profile is null");
        } else {
            String appSourceName = mediaOutputController.getAppSourceName();
            if (localBluetoothLeBroadcast2.mService == null) {
                Log.d("LocalBluetoothLeBroadcast", "The BluetoothLeBroadcast is null when updating the broadcast.");
            } else {
                String str2 = localBluetoothLeBroadcast2.mProgramInfo;
                MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("updateBroadcast: language = null ,programInfo = ", str2, "LocalBluetoothLeBroadcast");
                localBluetoothLeBroadcast2.mNewAppSourceName = appSourceName;
                localBluetoothLeBroadcast2.mService.updateBroadcast(localBluetoothLeBroadcast2.mBroadcastId, localBluetoothLeBroadcast2.mBuilder.setProgramInfo(str2).build());
            }
            z2 = true;
        }
        if (!z2) {
            handleLeBroadcastUpdateFailed();
        }
    }

    @Override // com.android.systemui.media.dialog.MediaOutputBaseDialog
    public final void getHeaderIconRes() {
    }
}
