package com.sec.internal.ims.servicemodules.euc.dialog;

import android.R;
import android.app.AlertDialog;
import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.ActivityNotFoundException;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.Uri;
import android.os.Handler;
import android.text.Editable;
import android.text.Html;
import android.text.TextWatcher;
import android.text.method.HideReturnsTransformationMethod;
import android.text.method.PasswordTransformationMethod;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;
import com.sec.internal.helper.Preconditions;
import com.sec.internal.helper.userconsent.HyperlinkUtils;
import com.sec.internal.helper.userconsent.IHyperlinkOnClickListener;
import com.sec.internal.ims.servicemodules.euc.data.EucMessageKey;
import com.sec.internal.ims.servicemodules.euc.data.EucResponseData;
import com.sec.internal.ims.servicemodules.euc.data.EucType;
import com.sec.internal.ims.servicemodules.euc.data.IEucData;
import com.sec.internal.ims.servicemodules.euc.data.IEucQuery;
import com.sec.internal.ims.servicemodules.euc.dialog.IEucDisplayManager;
import com.sec.internal.imscr.LogClass;
import com.sec.internal.log.IMSLog;
import com.sec.sve.generalevent.VcidEvent;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
public class EucDisplayManager implements IEucDisplayManager {
    private static final String EUC_KEY = "euc_key";
    private static final String LOG_TAG = "EucDisplayManager";
    private static final String SHOW_EUC_DIALOG = "com.sec.internal.ims.servicemodules.euc.dialog.action.SHOW_EUC_DIALOG";
    private static final String START_NOT_CALLED_EXCEPTION_MESSAGE = "start was not called!";
    private final Context mContext;
    private final Handler mHandler;
    private final NotificationManager mNotificationManager;
    private final HashMap<EucMessageKey, AlertDialog> mDialogs = new HashMap<>();
    private final EucNotificationReceiver mEucNotificationReceiver = new EucNotificationReceiver();
    private boolean mStartCalled = false;

    private class EucNotificationReceiver extends BroadcastReceiver {
        private EucNotificationReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, final Intent intent) {
            String action = intent.getAction();
            Log.d(EucDisplayManager.LOG_TAG, "EucNotificationReceiver: " + action);
            if (!EucDisplayManager.SHOW_EUC_DIALOG.equals(action) || intent.getExtras() == null) {
                return;
            }
            EucDisplayManager.this.mHandler.post(new Runnable() { // from class: com.sec.internal.ims.servicemodules.euc.dialog.EucDisplayManager.EucNotificationReceiver.1
                @Override // java.lang.Runnable
                public void run() {
                    EucMessageKey unmarshall = EucMessageKey.unmarshall(intent.getExtras().getByteArray(EucDisplayManager.EUC_KEY));
                    EucDisplayManager.this.mNotificationManager.cancel(unmarshall.hashCode());
                    if (EucDisplayManager.this.mDialogs.containsKey(unmarshall)) {
                        ((AlertDialog) EucDisplayManager.this.mDialogs.get(unmarshall)).show();
                    }
                }
            });
        }
    }

    public EucDisplayManager(Context context, Handler handler) {
        this.mContext = context;
        this.mHandler = handler;
        this.mNotificationManager = (NotificationManager) context.getSystemService("notification");
    }

    @Override // com.sec.internal.ims.servicemodules.euc.dialog.IEucDisplayManager
    public void start() throws IllegalStateException {
        Log.d(LOG_TAG, "start");
        Preconditions.checkState(!this.mStartCalled, "start was already called!");
        this.mStartCalled = true;
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(SHOW_EUC_DIALOG);
        this.mContext.registerReceiver(this.mEucNotificationReceiver, intentFilter, 4);
    }

    @Override // com.sec.internal.ims.servicemodules.euc.dialog.IEucDisplayManager
    public void stop() throws IllegalStateException {
        Log.d(LOG_TAG, VcidEvent.BUNDLE_VALUE_ACTION_STOP);
        Preconditions.checkState(this.mStartCalled, "stop was already called!");
        this.mStartCalled = false;
        this.mContext.unregisterReceiver(this.mEucNotificationReceiver);
    }

    @Override // com.sec.internal.ims.servicemodules.euc.dialog.IEucDisplayManager
    public void display(IEucQuery iEucQuery, String str, IEucDisplayManager.IDisplayCallback iDisplayCallback) throws IllegalStateException {
        Preconditions.checkState(this.mStartCalled, START_NOT_CALLED_EXCEPTION_MESSAGE);
        this.mHandler.post(new AnonymousClass1(iEucQuery, str, iDisplayCallback));
    }

    /* renamed from: com.sec.internal.ims.servicemodules.euc.dialog.EucDisplayManager$1, reason: invalid class name */
    class AnonymousClass1 implements Runnable {
        final IEucData eucData;
        final EucMessageKey eucMessageKey;
        final EucType eucType;
        final boolean hasPin;
        final /* synthetic */ IEucDisplayManager.IDisplayCallback val$callback;
        final /* synthetic */ IEucQuery val$euc;
        final /* synthetic */ String val$lang;

        AnonymousClass1(IEucQuery iEucQuery, String str, IEucDisplayManager.IDisplayCallback iDisplayCallback) {
            this.val$euc = iEucQuery;
            this.val$lang = str;
            this.val$callback = iDisplayCallback;
            IEucData eucData = iEucQuery.getEucData();
            this.eucData = eucData;
            EucType type = eucData.getType();
            this.eucType = type;
            this.eucMessageKey = new EucMessageKey(eucData.getId(), eucData.getOwnIdentity(), type, eucData.getRemoteUri());
            this.hasPin = eucData.getPin();
        }

        @Override // java.lang.Runnable
        public void run() {
            AlertDialog.Builder builder = new AlertDialog.Builder(EucDisplayManager.this.mContext, R.style.Theme.DeviceDefault.Light.Dialog.Alert);
            View inflate = LayoutInflater.from(EucDisplayManager.this.mContext).inflate(com.sec.imsservice.R.layout.euc_inputbox, (ViewGroup) null);
            final EditText editText = (EditText) inflate.findViewById(com.sec.imsservice.R.id.input);
            if (this.hasPin) {
                editText.setInputType(18);
                inflate.findViewById(com.sec.imsservice.R.id.pin_layout).setVisibility(0);
                ((CheckBox) inflate.findViewById(com.sec.imsservice.R.id.show_pin)).setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.sec.internal.ims.servicemodules.euc.dialog.EucDisplayManager.1.1
                    @Override // android.widget.CompoundButton.OnCheckedChangeListener
                    public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                        if (z) {
                            editText.setTransformationMethod(HideReturnsTransformationMethod.getInstance());
                        } else {
                            editText.setTransformationMethod(PasswordTransformationMethod.getInstance());
                        }
                    }
                });
            }
            builder.setView(inflate);
            builder.setTitle(this.val$euc.getDialogData(this.val$lang).getSubject());
            String acceptButton = this.val$euc.getDialogData(this.val$lang).getAcceptButton();
            if (acceptButton == null) {
                int i = AnonymousClass5.$SwitchMap$com$sec$internal$ims$servicemodules$euc$data$EucType[this.eucType.ordinal()];
                if (i == 1 || i == 2) {
                    acceptButton = EucDisplayManager.this.mContext.getResources().getString(com.sec.imsservice.R.string.dialog_text_rcs_config_accept);
                } else if (i == 3 || i == 4) {
                    acceptButton = EucDisplayManager.this.mContext.getResources().getString(com.sec.imsservice.R.string.dialog_text_rcs_config_ok);
                } else {
                    throw new IllegalStateException("Unsupported euc type for display!");
                }
            }
            String rejectButton = this.val$euc.getDialogData(this.val$lang).getRejectButton();
            if (rejectButton == null) {
                rejectButton = EucDisplayManager.this.mContext.getResources().getString(com.sec.imsservice.R.string.dialog_text_rcs_config_reject);
            }
            builder.setPositiveButton(acceptButton, new DialogInterface.OnClickListener() { // from class: com.sec.internal.ims.servicemodules.euc.dialog.EucDisplayManager.1.2
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i2) {
                    AnonymousClass1.this.onClickAction(EucResponseData.Response.ACCEPT, editText);
                }
            });
            EucType eucType = this.eucType;
            if (eucType == EucType.PERSISTENT || eucType == EucType.VOLATILE) {
                builder.setNegativeButton(rejectButton, new DialogInterface.OnClickListener() { // from class: com.sec.internal.ims.servicemodules.euc.dialog.EucDisplayManager.1.3
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialogInterface, int i2) {
                        AnonymousClass1.this.onClickAction(EucResponseData.Response.DECLINE, editText);
                    }
                });
            }
            AlertDialog create = builder.create();
            if (this.hasPin) {
                create.setOnShowListener(new DialogInterface.OnShowListener() { // from class: com.sec.internal.ims.servicemodules.euc.dialog.EucDisplayManager.1.4
                    @Override // android.content.DialogInterface.OnShowListener
                    public void onShow(DialogInterface dialogInterface) {
                        AlertDialog alertDialog = (AlertDialog) dialogInterface;
                        final Button button = alertDialog.getButton(-1);
                        final Button button2 = alertDialog.getButton(-2);
                        button.setEnabled(false);
                        button2.setEnabled(false);
                        editText.addTextChangedListener(new TextWatcher() { // from class: com.sec.internal.ims.servicemodules.euc.dialog.EucDisplayManager.1.4.1
                            @Override // android.text.TextWatcher
                            public void afterTextChanged(Editable editable) {
                            }

                            @Override // android.text.TextWatcher
                            public void beforeTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
                            }

                            @Override // android.text.TextWatcher
                            public void onTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
                                String charSequence2 = charSequence.toString();
                                button.setEnabled(!charSequence2.isEmpty());
                                button2.setEnabled(!charSequence2.isEmpty());
                            }
                        });
                    }
                });
            }
            Window window = create.getWindow();
            if (window != null) {
                window.setType(2038);
            }
            create.setCancelable(false);
            EucDisplayManager.this.mDialogs.put(this.eucMessageKey, create);
            create.show();
            HyperlinkUtils.processLinks((TextView) inflate.findViewById(com.sec.imsservice.R.id.message), this.val$euc.getDialogData(this.val$lang).getText(), new IHyperlinkOnClickListener() { // from class: com.sec.internal.ims.servicemodules.euc.dialog.EucDisplayManager.1.5
                @Override // com.sec.internal.helper.userconsent.IHyperlinkOnClickListener
                public void onClick(View view, Uri uri) {
                    Intent intent = new Intent("android.intent.action.VIEW");
                    intent.setData(uri);
                    intent.setFlags(LogClass.SIM_EVENT);
                    try {
                        EucDisplayManager.this.mContext.startActivity(intent);
                        if (EucDisplayManager.this.mDialogs.containsKey(AnonymousClass1.this.eucMessageKey)) {
                            ((AlertDialog) EucDisplayManager.this.mDialogs.get(AnonymousClass1.this.eucMessageKey)).dismiss();
                            AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                            EucDisplayManager eucDisplayManager = EucDisplayManager.this;
                            String subject = anonymousClass1.val$euc.getDialogData(anonymousClass1.val$lang).getSubject();
                            AnonymousClass1 anonymousClass12 = AnonymousClass1.this;
                            eucDisplayManager.showEucNotification(subject, anonymousClass12.val$euc.getDialogData(anonymousClass12.val$lang).getText(), AnonymousClass1.this.eucMessageKey);
                        }
                    } catch (ActivityNotFoundException e) {
                        Log.e(EucDisplayManager.LOG_TAG, e.getMessage());
                        Toast.makeText(EucDisplayManager.this.mContext, com.sec.imsservice.R.string.hyperlink_format_not_supported_exception, 0).show();
                    }
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void onClickAction(final EucResponseData.Response response, final EditText editText) {
            EucDisplayManager.this.mHandler.post(new Runnable() { // from class: com.sec.internal.ims.servicemodules.euc.dialog.EucDisplayManager.1.6
                @Override // java.lang.Runnable
                public void run() {
                    AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                    anonymousClass1.val$callback.onSuccess(response, anonymousClass1.hasPin ? editText.getText().toString() : null);
                }
            });
            EucDisplayManager.this.mDialogs.remove(this.eucMessageKey);
        }
    }

    /* renamed from: com.sec.internal.ims.servicemodules.euc.dialog.EucDisplayManager$5, reason: invalid class name */
    static /* synthetic */ class AnonymousClass5 {
        static final /* synthetic */ int[] $SwitchMap$com$sec$internal$ims$servicemodules$euc$data$EucType;

        static {
            int[] iArr = new int[EucType.values().length];
            $SwitchMap$com$sec$internal$ims$servicemodules$euc$data$EucType = iArr;
            try {
                iArr[EucType.PERSISTENT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$servicemodules$euc$data$EucType[EucType.VOLATILE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$servicemodules$euc$data$EucType[EucType.ACKNOWLEDGEMENT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$servicemodules$euc$data$EucType[EucType.NOTIFICATION.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    @Override // com.sec.internal.ims.servicemodules.euc.dialog.IEucDisplayManager
    public void hide(final EucMessageKey eucMessageKey) throws IllegalStateException {
        String str = LOG_TAG;
        Log.i(str, "hide: getEucId: " + eucMessageKey.getEucId());
        IMSLog.s(str, "hide: eucMessageKey: " + eucMessageKey);
        Preconditions.checkState(this.mStartCalled, START_NOT_CALLED_EXCEPTION_MESSAGE);
        this.mHandler.post(new Runnable() { // from class: com.sec.internal.ims.servicemodules.euc.dialog.EucDisplayManager.2
            @Override // java.lang.Runnable
            public void run() {
                if (EucDisplayManager.this.mDialogs.containsKey(eucMessageKey)) {
                    ((AlertDialog) EucDisplayManager.this.mDialogs.get(eucMessageKey)).dismiss();
                    EucDisplayManager.this.mDialogs.remove(eucMessageKey);
                }
                EucDisplayManager.this.mNotificationManager.cancel(eucMessageKey.hashCode());
            }
        });
    }

    @Override // com.sec.internal.ims.servicemodules.euc.dialog.IEucDisplayManager
    public void hideAllForType(final EucType eucType) throws IllegalStateException {
        Log.i(LOG_TAG, "hideAllForType: type: " + eucType);
        Preconditions.checkState(this.mStartCalled, START_NOT_CALLED_EXCEPTION_MESSAGE);
        this.mHandler.post(new Runnable() { // from class: com.sec.internal.ims.servicemodules.euc.dialog.EucDisplayManager.3
            @Override // java.lang.Runnable
            public void run() {
                Iterator it = EucDisplayManager.this.mDialogs.entrySet().iterator();
                while (it.hasNext()) {
                    Map.Entry entry = (Map.Entry) it.next();
                    if (eucType == ((EucMessageKey) entry.getKey()).getEucType()) {
                        ((AlertDialog) entry.getValue()).dismiss();
                        EucDisplayManager.this.mNotificationManager.cancel(((EucMessageKey) entry.getKey()).hashCode());
                        it.remove();
                    }
                }
            }
        });
    }

    @Override // com.sec.internal.ims.servicemodules.euc.dialog.IEucDisplayManager
    public void hideAllForOwnIdentity(final String str) throws IllegalStateException {
        String str2 = LOG_TAG;
        Log.i(str2, "hideAllForOwnIdentity");
        IMSLog.s(str2, "hideAllForOwnIdentity: ownIdentity: " + str);
        Preconditions.checkState(this.mStartCalled, START_NOT_CALLED_EXCEPTION_MESSAGE);
        this.mHandler.post(new Runnable() { // from class: com.sec.internal.ims.servicemodules.euc.dialog.EucDisplayManager.4
            @Override // java.lang.Runnable
            public void run() {
                Iterator it = EucDisplayManager.this.mDialogs.entrySet().iterator();
                while (it.hasNext()) {
                    Map.Entry entry = (Map.Entry) it.next();
                    if (str.equals(((EucMessageKey) entry.getKey()).getOwnIdentity())) {
                        ((AlertDialog) entry.getValue()).dismiss();
                        EucDisplayManager.this.mNotificationManager.cancel(((EucMessageKey) entry.getKey()).hashCode());
                        it.remove();
                    }
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showEucNotification(String str, String str2, EucMessageKey eucMessageKey) {
        String str3 = LOG_TAG;
        Log.i(str3, "showEucNotification: title: " + str + ", message: " + str2 + ", getEucId: " + eucMessageKey.getEucId());
        IMSLog.s(str3, "showEucNotification: title: " + str + ", message: " + str2 + ", key: " + eucMessageKey);
        String obj = Html.fromHtml(str2, 0).toString();
        Intent intent = new Intent(this.mContext, (Class<?>) EucNotificationReceiver.class);
        intent.setAction(SHOW_EUC_DIALOG);
        intent.putExtra(EUC_KEY, eucMessageKey.marshall());
        PendingIntent broadcast = PendingIntent.getBroadcast(this.mContext, eucMessageKey.hashCode(), intent, 33554432);
        String string = this.mContext.getResources().getString(com.sec.imsservice.R.string.app_name);
        this.mNotificationManager.createNotificationChannel(new NotificationChannel(string, string, 2));
        Notification.Builder builder = new Notification.Builder(this.mContext, string);
        builder.setSmallIcon(com.sec.imsservice.R.drawable.stat_notify_rcs_service_avaliable);
        builder.setContentTitle(str);
        builder.setAutoCancel(false);
        builder.setContentText(obj);
        builder.setOngoing(true);
        builder.setContentIntent(broadcast);
        builder.setStyle(new Notification.BigTextStyle().bigText(obj));
        this.mNotificationManager.notify(eucMessageKey.hashCode(), builder.build());
    }
}
