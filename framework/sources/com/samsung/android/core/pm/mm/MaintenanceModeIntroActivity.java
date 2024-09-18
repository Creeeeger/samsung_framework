package com.samsung.android.core.pm.mm;

import android.app.ActionBar;
import android.app.Activity;
import android.app.ActivityManager;
import android.app.AlertDialog;
import android.app.job.JobInfo;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.UserInfo;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.SystemClock;
import android.os.SystemProperties;
import android.os.UserManager;
import android.security.keystore.KeyProperties;
import android.text.TextUtils;
import android.util.Log;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.CheckedTextView;
import android.widget.ImageView;
import android.widget.ScrollView;
import android.widget.TextView;
import com.android.internal.R;
import com.samsung.android.core.pm.mm.MaintenanceModeIntroActivity;
import com.samsung.android.core.pm.mm.MaintenanceModeUtils;
import java.util.Timer;
import java.util.TimerTask;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* loaded from: classes5.dex */
public class MaintenanceModeIntroActivity extends Activity {
    private static final long DUMP_CHECK_DELAY = 1000;
    private static final long DUMP_CHECK_INITIAL_DELAY = 10000;
    private static final long DUMP_CHECK_TIMEOUT = 300000;
    private static final String TAG = "MaintenanceMode";
    private TimerTask mCloudBackupTimerTask;
    private View mColudBackupMenu;
    private View mColudBackupMenuDivider;
    private TextView mColudBackupMenuSubTextView;
    private Context mContext;
    private View mDialogView;
    private long mDumpEndTime;
    private View mDumpView;
    private View mExternalStorageBackupMenu;
    private Resources mResources;
    private View mRootView;
    private Button mTurnOnButton;
    private WindowManager.LayoutParams mViewWindowParams;
    private View mWaitingView;
    private WindowManager mWm;
    private boolean mIsTablet = false;
    private boolean mIsFold = false;
    private boolean mIsCloudBackupSupported = false;
    private int mCloudBackupRetentionPeriod = 30;
    private String mCloudBackupIntroDescription = null;
    private String mCloudBackupStatus = KeyProperties.DIGEST_NONE;
    private final ExecutorService mSingleThreadExecutor = Executors.newSingleThreadExecutor();
    private final ExecutorService mLoggingExecutor = Executors.newSingleThreadExecutor();
    private final ExecutorService mButtonExecutor = Executors.newSingleThreadExecutor();
    private final BroadcastReceiver mCloudBackupReceiver = new CloudBackupReceiver();
    private final Timer mTimer = new Timer();

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.app.Activity
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        Context applicationContext = getApplicationContext();
        this.mContext = applicationContext;
        this.mResources = applicationContext.getResources();
        if (!MaintenanceModeUtils.hasSystemFeature() || MaintenanceModeUtils.doesMaintenanceModeUserIdExist(this.mContext) || ActivityManager.getCurrentUser() != 0) {
            finish();
            return;
        }
        this.mIsTablet = MaintenanceModeUtils.isTablet();
        this.mIsFold = MaintenanceModeUtils.isFold();
        setContentView(getResources().getConfiguration());
        init();
    }

    private void setContentView(Configuration config) {
        MaintenanceModeUtils.configureLayout(this, this.mResources, config, this.mIsTablet, this.mIsFold, R.layout.activity_maintenance_mode_intro, R.layout.activity_maintenance_mode_intro_land, R.id.maintenance_mode_intro_body_container);
        ActionBar actionBar = getActionBar();
        if (actionBar != null) {
            actionBar.setDisplayHomeAsUpEnabled(true);
        }
        if (this.mIsTablet) {
            ImageView imageView = (ImageView) findViewById(R.id.maintenance_mode_intro_imageview);
            imageView.setMaxWidth(this.mResources.getDimensionPixelSize(R.dimen.maintenance_mode_image_max_width_tablet));
            TextView summaryTextView = (TextView) findViewById(R.id.maintenance_mode_intro_summary_textview);
            String summaryTextViewMessage = this.mResources.getString(R.string.maintenance_mode_intro_summary_textview_message_tablet);
            summaryTextView.setText(summaryTextViewMessage);
            TextView descriptionNeedToUnlockTextView = (TextView) findViewById(R.id.maintenance_mode_intro_description_need_to_unlock_textview);
            String descriptionNeedToUnlockTextViewMessage = this.mResources.getString(R.string.maintenance_mode_intro_description_need_to_unlock_tablet);
            descriptionNeedToUnlockTextView.setText(descriptionNeedToUnlockTextViewMessage);
            TextView recommendationTextView = (TextView) findViewById(R.id.maintenance_mode_intro_recommendation_textview);
            String recommendationTextViewMessage = this.mResources.getString(R.string.maintenance_mode_intro_recommendation_textview_message_tablet);
            recommendationTextView.setText(recommendationTextViewMessage);
        }
        View findViewById = findViewById(R.id.maintenance_mode_intro_backup_menu_cloud);
        this.mColudBackupMenu = findViewById;
        findViewById.setBackgroundResource(R.drawable.shape_maintenance_mode_focus_block_top);
        this.mColudBackupMenu.setOnClickListener(new View.OnClickListener() { // from class: com.samsung.android.core.pm.mm.MaintenanceModeIntroActivity$$ExternalSyntheticLambda29
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MaintenanceModeIntroActivity.this.lambda$setContentView$2(view);
            }
        });
        TextView cloudBackupMenuMainTextView = (TextView) findViewById(R.id.maintenance_mode_intro_backup_menu_cloud_main_textview);
        cloudBackupMenuMainTextView.setTextSize(0, MaintenanceModeUtils.getFontSize(this.mContext, R.dimen.maintenance_mode_focus_block_main_text_size));
        TextView textView = (TextView) findViewById(R.id.maintenance_mode_intro_backup_menu_cloud_sub_textview);
        this.mColudBackupMenuSubTextView = textView;
        textView.setTextSize(0, MaintenanceModeUtils.getFontSize(this.mContext, R.dimen.maintenance_mode_focus_block_sub_text_size));
        this.mColudBackupMenuDivider = findViewById(R.id.maintenance_mode_intro_backup_menu_divider_cloud);
        View findViewById2 = findViewById(R.id.maintenance_mode_intro_backup_menu_external_storage);
        this.mExternalStorageBackupMenu = findViewById2;
        findViewById2.setBackgroundResource(R.drawable.shape_maintenance_mode_focus_block_alone);
        this.mExternalStorageBackupMenu.setOnClickListener(new View.OnClickListener() { // from class: com.samsung.android.core.pm.mm.MaintenanceModeIntroActivity$$ExternalSyntheticLambda30
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MaintenanceModeIntroActivity.this.lambda$setContentView$4(view);
            }
        });
        TextView externalStorageBackupMenuMainTextView = (TextView) findViewById(R.id.maintenance_mode_intro_backup_menu_external_storage_main_textview);
        externalStorageBackupMenuMainTextView.setTextSize(0, MaintenanceModeUtils.getFontSize(this.mContext, R.dimen.maintenance_mode_focus_block_main_text_size));
        TextView externalStorageBackupMenuSubTextView = (TextView) findViewById(R.id.maintenance_mode_intro_backup_menu_external_storage_sub_textview);
        externalStorageBackupMenuSubTextView.setTextSize(0, MaintenanceModeUtils.getFontSize(this.mContext, R.dimen.maintenance_mode_focus_block_sub_text_size));
        updateCloudBackupMenuSubText();
        updateCloudBackupMenuVisibility();
        Button button = (Button) findViewById(R.id.maintenance_mode_intro_turnon_button);
        this.mTurnOnButton = button;
        if (this.mIsTablet) {
            button.setWidth(this.mResources.getDimensionPixelSize(R.dimen.maintenance_mode_body_button_width_tablet));
        }
        this.mTurnOnButton.setTextSize(0, MaintenanceModeUtils.getFontSize(this.mContext, R.dimen.maintenance_mode_common_button_text_size));
        this.mTurnOnButton.setOnClickListener(new View.OnClickListener() { // from class: com.samsung.android.core.pm.mm.MaintenanceModeIntroActivity$$ExternalSyntheticLambda31
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MaintenanceModeIntroActivity.this.lambda$setContentView$8(view);
            }
        });
    }

    public /* synthetic */ void lambda$setContentView$2(View v) {
        this.mButtonExecutor.submit(new Runnable() { // from class: com.samsung.android.core.pm.mm.MaintenanceModeIntroActivity$$ExternalSyntheticLambda18
            @Override // java.lang.Runnable
            public final void run() {
                MaintenanceModeIntroActivity.this.lambda$setContentView$0();
            }
        });
        this.mLoggingExecutor.submit(new Runnable() { // from class: com.samsung.android.core.pm.mm.MaintenanceModeIntroActivity$$ExternalSyntheticLambda19
            @Override // java.lang.Runnable
            public final void run() {
                MaintenanceModeIntroActivity.this.lambda$setContentView$1();
            }
        });
    }

    public /* synthetic */ void lambda$setContentView$0() {
        MaintenanceModeUtils.startCloudActivity(this.mContext);
    }

    public /* synthetic */ void lambda$setContentView$1() {
        MaintenanceModeUtils.sendLoggingDataToSA(this.mContext, "7083", null);
    }

    public /* synthetic */ void lambda$setContentView$4(View v) {
        MaintenanceModeUtils.startSmartSwitchActivity(this.mContext);
        this.mLoggingExecutor.submit(new Runnable() { // from class: com.samsung.android.core.pm.mm.MaintenanceModeIntroActivity$$ExternalSyntheticLambda17
            @Override // java.lang.Runnable
            public final void run() {
                MaintenanceModeIntroActivity.this.lambda$setContentView$3();
            }
        });
    }

    public /* synthetic */ void lambda$setContentView$3() {
        MaintenanceModeUtils.sendLoggingDataToSA(this.mContext, "7074", null);
    }

    public /* synthetic */ void lambda$setContentView$8(View v) {
        if (!MaintenanceModeUtils.isSecureLockSet(this.mContext)) {
            showDialogToInformSecureLockIsNeeded();
        } else {
            if (MaintenanceModeUtils.isLowOnStorage(this.mContext)) {
                showDialogToNotifyLowOnStorage();
                return;
            }
            this.mTurnOnButton.setClickable(false);
            this.mButtonExecutor.submit(new Runnable() { // from class: com.samsung.android.core.pm.mm.MaintenanceModeIntroActivity$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    MaintenanceModeIntroActivity.this.lambda$setContentView$6();
                }
            });
            this.mLoggingExecutor.submit(new Runnable() { // from class: com.samsung.android.core.pm.mm.MaintenanceModeIntroActivity$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    MaintenanceModeIntroActivity.this.lambda$setContentView$7();
                }
            });
        }
    }

    public /* synthetic */ void lambda$setContentView$6() {
        final String backupStatus = MaintenanceModeUtils.getStatusOfBackupInProgress(this.mContext);
        runOnUiThread(new Runnable() { // from class: com.samsung.android.core.pm.mm.MaintenanceModeIntroActivity$$ExternalSyntheticLambda7
            @Override // java.lang.Runnable
            public final void run() {
                MaintenanceModeIntroActivity.this.lambda$setContentView$5(backupStatus);
            }
        });
    }

    public /* synthetic */ void lambda$setContentView$5(String backupStatus) {
        if ("NOT_IN_PROGRESS".equals(backupStatus)) {
            showDialogToConfirmRestart();
        } else {
            showDialogToReconfirmCancelingBackup(backupStatus);
        }
        this.mTurnOnButton.setClickable(true);
    }

    public /* synthetic */ void lambda$setContentView$7() {
        MaintenanceModeUtils.sendLoggingDataToSA(this.mContext, "7066", null);
    }

    private void init() {
        this.mRootView = getWindow().getDecorView();
        this.mWm = (WindowManager) getSystemService(Context.WINDOW_SERVICE);
        registerCloudBackupReceiver();
        checkAndUpdateCloudBackupMenu();
        prepareWaitingView();
    }

    private void prepareWaitingView() {
        int i;
        int i2;
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams(-1, -1, 0, 0, 2024, 131328, -3);
        this.mViewWindowParams = layoutParams;
        layoutParams.gravity = 17;
        this.mViewWindowParams.privateFlags |= 16;
        this.mViewWindowParams.screenOrientation = 1;
        this.mViewWindowParams.layoutInDisplayCutoutMode = 1;
        this.mViewWindowParams.setFitInsetsSides(0);
        View inflate = LayoutInflater.from(this).inflate(R.layout.view_maintenance_mode_waiting, (ViewGroup) null);
        this.mWaitingView = inflate;
        TextView waitingTextView = (TextView) inflate.findViewById(R.id.maintenance_mode_view_waiting_textview);
        Resources resources = this.mResources;
        if (this.mIsTablet) {
            i = R.string.maintenance_mode_view_waiting_textview_message_tablet;
        } else {
            i = R.string.maintenance_mode_view_waiting_textview_message_phone;
        }
        String waitingTextViewMessage = resources.getString(i);
        waitingTextView.setText(waitingTextViewMessage);
        waitingTextView.setTextSize(0, MaintenanceModeUtils.getFontSize(this.mContext, R.dimen.maintenance_mode_common_text_size));
        View inflate2 = LayoutInflater.from(this).inflate(R.layout.view_maintenance_mode_dump, (ViewGroup) null);
        this.mDumpView = inflate2;
        TextView dumpTextView = (TextView) inflate2.findViewById(R.id.maintenance_mode_view_dump_textview);
        StringBuilder append = new StringBuilder().append(this.mResources.getString(R.string.maintenance_mode_view_dump_textview_message_creating)).append("\n\n");
        Resources resources2 = this.mResources;
        if (this.mIsTablet) {
            i2 = R.string.maintenance_mode_view_dump_textview_message_tablet;
        } else {
            i2 = R.string.maintenance_mode_view_dump_textview_message_phone;
        }
        String dumpTextViewMessage = append.append(resources2.getString(i2)).toString();
        dumpTextView.setText(dumpTextViewMessage);
        dumpTextView.setTextSize(0, MaintenanceModeUtils.getFontSize(this.mContext, R.dimen.maintenance_mode_common_text_size));
        if (this.mIsTablet) {
            int padding = this.mResources.getDimensionPixelSize(R.dimen.maintenance_mode_body_padding_left_right_tablet);
            View waitingViewContainer = this.mWaitingView.findViewById(R.id.maintenance_mode_view_waiting_container);
            waitingViewContainer.setPadding(padding, 0, padding, 0);
            View dumpViewContainer = this.mDumpView.findViewById(R.id.maintenance_mode_view_dump_container);
            dumpViewContainer.setPadding(padding, 0, padding, 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.app.Activity
    public void onResume() {
        boolean isFinished = false;
        if (!MaintenanceModeUtils.hasSystemFeature()) {
            finish();
            isFinished = true;
        }
        super.onResume();
        if (isFinished) {
            return;
        }
        checkAndUpdateCloudBackupMenu();
        AnonymousClass1 anonymousClass1 = new AnonymousClass1();
        this.mCloudBackupTimerTask = anonymousClass1;
        this.mTimer.schedule(anonymousClass1, JobInfo.DEFAULT_INITIAL_BACKOFF_MILLIS, JobInfo.DEFAULT_INITIAL_BACKOFF_MILLIS);
    }

    /* renamed from: com.samsung.android.core.pm.mm.MaintenanceModeIntroActivity$1 */
    /* loaded from: classes5.dex */
    public class AnonymousClass1 extends TimerTask {
        AnonymousClass1() {
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            if (MaintenanceModeIntroActivity.this.mIsCloudBackupSupported) {
                try {
                    MaintenanceModeIntroActivity.this.mSingleThreadExecutor.submit(new Runnable() { // from class: com.samsung.android.core.pm.mm.MaintenanceModeIntroActivity$1$$ExternalSyntheticLambda0
                        @Override // java.lang.Runnable
                        public final void run() {
                            MaintenanceModeIntroActivity.AnonymousClass1.this.lambda$run$0();
                        }
                    });
                } catch (Exception e) {
                }
            }
        }

        public /* synthetic */ void lambda$run$0() {
            MaintenanceModeIntroActivity.this.updateCloudBackupStatusFromProvider();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.app.Activity
    public void onPause() {
        TimerTask timerTask = this.mCloudBackupTimerTask;
        if (timerTask != null) {
            timerTask.cancel();
        }
        super.onPause();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.app.Activity
    public void onDestroy() {
        try {
            unregisterReceiver(this.mCloudBackupReceiver);
        } catch (Exception e) {
        }
        this.mTimer.cancel();
        this.mSingleThreadExecutor.shutdownNow();
        this.mButtonExecutor.shutdownNow();
        this.mLoggingExecutor.shutdown();
        super.onDestroy();
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem item) {
        if (item != null && item.getItemId() == 16908332) {
            onBackPressed();
            return true;
        }
        return super.onOptionsItemSelected(item);
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration newConfig) {
        super.onConfigurationChanged(newConfig);
        setContentView(newConfig);
        adjustDialogLayout(newConfig);
    }

    private void checkAndUpdateCloudBackupMenu() {
        this.mSingleThreadExecutor.submit(new Runnable() { // from class: com.samsung.android.core.pm.mm.MaintenanceModeIntroActivity$$ExternalSyntheticLambda10
            @Override // java.lang.Runnable
            public final void run() {
                MaintenanceModeIntroActivity.this.lambda$checkAndUpdateCloudBackupMenu$10();
            }
        });
    }

    public /* synthetic */ void lambda$checkAndUpdateCloudBackupMenu$10() {
        updateCloudBackupStatusFromProvider();
        MaintenanceModeUtils.CloudInfo cloudInfo = MaintenanceModeUtils.checkCloudBackupSupport(this.mContext);
        this.mIsCloudBackupSupported = cloudInfo.isSupported;
        this.mCloudBackupRetentionPeriod = cloudInfo.retentionPeriod;
        this.mCloudBackupIntroDescription = cloudInfo.introDescription;
        runOnUiThread(new Runnable() { // from class: com.samsung.android.core.pm.mm.MaintenanceModeIntroActivity$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                MaintenanceModeIntroActivity.this.lambda$checkAndUpdateCloudBackupMenu$9();
            }
        });
    }

    public /* synthetic */ void lambda$checkAndUpdateCloudBackupMenu$9() {
        updateCloudBackupMenuSubText();
        updateCloudBackupMenuVisibility();
    }

    public void updateCloudBackupStatusFromProvider() {
        this.mCloudBackupStatus = MaintenanceModeUtils.getCloudBackupStatus(this.mContext);
        runOnUiThread(new MaintenanceModeIntroActivity$$ExternalSyntheticLambda0(this));
    }

    public void updateCloudBackupStatusFromReceiver(String action) {
        this.mCloudBackupStatus = convertActionToStatusForCloudBackup(action);
        runOnUiThread(new MaintenanceModeIntroActivity$$ExternalSyntheticLambda0(this));
    }

    private void updateCloudBackupMenuVisibility() {
        View view = this.mColudBackupMenu;
        if (view == null || this.mColudBackupMenuDivider == null || this.mExternalStorageBackupMenu == null) {
            return;
        }
        if (this.mIsCloudBackupSupported) {
            view.setVisibility(0);
            this.mColudBackupMenuDivider.setVisibility(0);
            this.mExternalStorageBackupMenu.setBackgroundResource(R.drawable.shape_maintenance_mode_focus_block_bottom);
        } else {
            view.setVisibility(8);
            this.mColudBackupMenuDivider.setVisibility(8);
            this.mExternalStorageBackupMenu.setBackgroundResource(R.drawable.shape_maintenance_mode_focus_block_alone);
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public void updateCloudBackupMenuSubText() {
        char c;
        if (this.mColudBackupMenuSubTextView == null) {
            return;
        }
        String str = this.mCloudBackupStatus;
        switch (str.hashCode()) {
            case -739684063:
                if (str.equals("BACKUP_NON_FINISHED")) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            case -226439134:
                if (str.equals("BACKUP_RUNNING")) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            case 82681838:
                if (str.equals("BACKUP_COMPLETED")) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            default:
                c = 65535;
                break;
        }
        switch (c) {
            case 0:
                this.mColudBackupMenuSubTextView.setText(this.mResources.getString(R.string.maintenance_mode_backup_cloud_menu_sub_textview_message_backing_up));
                return;
            case 1:
                this.mColudBackupMenuSubTextView.setText(this.mResources.getString(R.string.maintenance_mode_backup_cloud_menu_sub_textview_message_backed_up_succeeded));
                return;
            case 2:
                this.mColudBackupMenuSubTextView.setText(this.mResources.getString(R.string.maintenance_mode_backup_cloud_menu_sub_textview_message_backed_up_failed));
                return;
            default:
                if (!TextUtils.isEmpty(this.mCloudBackupIntroDescription)) {
                    this.mColudBackupMenuSubTextView.setText(this.mCloudBackupIntroDescription);
                    return;
                }
                TextView textView = this.mColudBackupMenuSubTextView;
                Resources resources = this.mResources;
                int i = this.mCloudBackupRetentionPeriod;
                textView.setText(resources.getQuantityString(R.plurals.maintenance_mode_backup_cloud_menu_sub_textview_message_default, i, Integer.valueOf(i)));
                return;
        }
    }

    /* loaded from: classes5.dex */
    public class CloudBackupReceiver extends BroadcastReceiver {
        /* synthetic */ CloudBackupReceiver(MaintenanceModeIntroActivity maintenanceModeIntroActivity, CloudBackupReceiverIA cloudBackupReceiverIA) {
            this();
        }

        private CloudBackupReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            final String action = intent.getAction();
            if (action != null) {
                try {
                    MaintenanceModeIntroActivity.this.mSingleThreadExecutor.submit(new Runnable() { // from class: com.samsung.android.core.pm.mm.MaintenanceModeIntroActivity$CloudBackupReceiver$$ExternalSyntheticLambda0
                        @Override // java.lang.Runnable
                        public final void run() {
                            MaintenanceModeIntroActivity.CloudBackupReceiver.this.lambda$onReceive$0(action);
                        }
                    });
                } catch (Exception e) {
                }
            }
            Log.i("MaintenanceMode", "onReceive: " + action);
        }

        public /* synthetic */ void lambda$onReceive$0(String action) {
            MaintenanceModeIntroActivity.this.updateCloudBackupStatusFromReceiver(action);
        }
    }

    private void registerCloudBackupReceiver() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("com.samsung.android.scloud.temporarybackup.NOTIFY_BACKUP_STARTED");
        intentFilter.addAction("com.samsung.android.scloud.temporarybackup.NOTIFY_BACKUP_COMPLETED");
        intentFilter.addAction("com.samsung.android.scloud.temporarybackup.NOTIFY_BACKUP_NOT_FINISHED");
        intentFilter.addAction("com.samsung.android.scloud.temporarybackup.NOTIFY_BACKUP_CANCELED");
        registerReceiver(this.mCloudBackupReceiver, intentFilter, "com.samsung.android.permission.ACCESS_MAINTENANCE_MODE", null);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private String convertActionToStatusForCloudBackup(String action) {
        char c;
        switch (action.hashCode()) {
            case 365973607:
                if (action.equals("com.samsung.android.scloud.temporarybackup.NOTIFY_BACKUP_CANCELED")) {
                    c = 3;
                    break;
                }
                c = 65535;
                break;
            case 750993107:
                if (action.equals("com.samsung.android.scloud.temporarybackup.NOTIFY_BACKUP_STARTED")) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            case 875734045:
                if (action.equals("com.samsung.android.scloud.temporarybackup.NOTIFY_BACKUP_COMPLETED")) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            case 1579405644:
                if (action.equals("com.samsung.android.scloud.temporarybackup.NOTIFY_BACKUP_NOT_FINISHED")) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            default:
                c = 65535;
                break;
        }
        switch (c) {
            case 0:
                return "BACKUP_RUNNING";
            case 1:
                return "BACKUP_COMPLETED";
            case 2:
                return "BACKUP_NON_FINISHED";
            default:
                return KeyProperties.DIGEST_NONE;
        }
    }

    private void showDialogToInformSecureLockIsNeeded() {
        AlertDialog.Builder builder = new AlertDialog.Builder(this).setMessage(R.string.maintenance_mode_intro_dialog_message_set_screen_lock_first).setPositiveButton(R.string.maintenance_mode_intro_dialog_button_text_set_screen_lock, new DialogInterface.OnClickListener() { // from class: com.samsung.android.core.pm.mm.MaintenanceModeIntroActivity$$ExternalSyntheticLambda8
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                MaintenanceModeIntroActivity.this.lambda$showDialogToInformSecureLockIsNeeded$11(dialogInterface, i);
            }
        }).setNegativeButton(R.string.maintenance_mode_dialog_button_text_cancel, new DialogInterface.OnClickListener() { // from class: com.samsung.android.core.pm.mm.MaintenanceModeIntroActivity$$ExternalSyntheticLambda9
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                MaintenanceModeIntroActivity.lambda$showDialogToInformSecureLockIsNeeded$12(dialogInterface, i);
            }
        });
        AlertDialog dialog = builder.create();
        dialog.getWindow().setGravity(80);
        dialog.show();
    }

    public /* synthetic */ void lambda$showDialogToInformSecureLockIsNeeded$11(DialogInterface dialog, int which) {
        MaintenanceModeUtils.startActivityToSetSecureLock(this);
    }

    public static /* synthetic */ void lambda$showDialogToInformSecureLockIsNeeded$12(DialogInterface dialog, int which) {
    }

    private void showDialogToNotifyLowOnStorage() {
        int i;
        Log.i("MaintenanceMode", "Low on storage");
        AlertDialog.Builder title = new AlertDialog.Builder(this).setTitle(R.string.maintenance_mode_intro_low_storage_dialog_title);
        if (this.mIsTablet) {
            i = R.string.maintenance_mode_intro_low_storage_dialog_message_tablet;
        } else {
            i = R.string.maintenance_mode_intro_low_storage_dialog_message_phone;
        }
        AlertDialog.Builder builder = title.setMessage(i).setPositiveButton(R.string.maintenance_mode_intro_low_storage_dialog_button_text, new DialogInterface.OnClickListener() { // from class: com.samsung.android.core.pm.mm.MaintenanceModeIntroActivity$$ExternalSyntheticLambda11
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i2) {
                MaintenanceModeIntroActivity.this.lambda$showDialogToNotifyLowOnStorage$13(dialogInterface, i2);
            }
        });
        AlertDialog dialog = builder.create();
        dialog.getWindow().setGravity(80);
        dialog.show();
    }

    public /* synthetic */ void lambda$showDialogToNotifyLowOnStorage$13(DialogInterface dialog, int which) {
        MaintenanceModeUtils.startMyFilesActivity(this);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private void showDialogToReconfirmCancelingBackup(String backupStatus) {
        char c;
        int messageResId = R.string.maintenance_mode_stop_backup_dialog_message;
        boolean isCloudBackupInProgress = false;
        if (backupStatus != null) {
            switch (backupStatus.hashCode()) {
                case -1070966578:
                    if (backupStatus.equals("RESTORE_RUNNING")) {
                        c = 2;
                        break;
                    }
                    c = 65535;
                    break;
                case -739684063:
                    if (backupStatus.equals("BACKUP_NON_FINISHED")) {
                        c = 1;
                        break;
                    }
                    c = 65535;
                    break;
                case -226439134:
                    if (backupStatus.equals("BACKUP_RUNNING")) {
                        c = 0;
                        break;
                    }
                    c = 65535;
                    break;
                default:
                    c = 65535;
                    break;
            }
            switch (c) {
                case 0:
                    messageResId = R.string.maintenance_mode_stop_backup_dialog_message_backing_up;
                    isCloudBackupInProgress = true;
                    break;
                case 1:
                    messageResId = R.string.maintenance_mode_stop_backup_dialog_message_backed_up_failed;
                    isCloudBackupInProgress = true;
                    break;
                case 2:
                    messageResId = R.string.maintenance_mode_stop_backup_dialog_message_restoring;
                    isCloudBackupInProgress = true;
                    break;
            }
        }
        final boolean needToLaunchCloudApp = isCloudBackupInProgress;
        AlertDialog.Builder builder = new AlertDialog.Builder(this).setMessage(messageResId).setPositiveButton(R.string.maintenance_mode_dialog_button_text_ok, new DialogInterface.OnClickListener() { // from class: com.samsung.android.core.pm.mm.MaintenanceModeIntroActivity$$ExternalSyntheticLambda25
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                MaintenanceModeIntroActivity.this.lambda$showDialogToReconfirmCancelingBackup$16(needToLaunchCloudApp, dialogInterface, i);
            }
        }).setNegativeButton(R.string.maintenance_mode_dialog_button_text_cancel, new DialogInterface.OnClickListener() { // from class: com.samsung.android.core.pm.mm.MaintenanceModeIntroActivity$$ExternalSyntheticLambda26
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                MaintenanceModeIntroActivity.this.lambda$showDialogToReconfirmCancelingBackup$18(dialogInterface, i);
            }
        }).setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.samsung.android.core.pm.mm.MaintenanceModeIntroActivity$$ExternalSyntheticLambda27
            @Override // android.content.DialogInterface.OnCancelListener
            public final void onCancel(DialogInterface dialogInterface) {
                MaintenanceModeIntroActivity.this.lambda$showDialogToReconfirmCancelingBackup$20(dialogInterface);
            }
        });
        AlertDialog dialog = builder.create();
        dialog.getWindow().setGravity(80);
        dialog.show();
    }

    public /* synthetic */ void lambda$showDialogToReconfirmCancelingBackup$16(boolean needToLaunchCloudApp, DialogInterface dialog, int which) {
        if (needToLaunchCloudApp) {
            this.mButtonExecutor.submit(new Runnable() { // from class: com.samsung.android.core.pm.mm.MaintenanceModeIntroActivity$$ExternalSyntheticLambda12
                @Override // java.lang.Runnable
                public final void run() {
                    MaintenanceModeIntroActivity.this.lambda$showDialogToReconfirmCancelingBackup$14();
                }
            });
        } else {
            showDialogToConfirmRestart();
        }
        this.mLoggingExecutor.submit(new Runnable() { // from class: com.samsung.android.core.pm.mm.MaintenanceModeIntroActivity$$ExternalSyntheticLambda13
            @Override // java.lang.Runnable
            public final void run() {
                MaintenanceModeIntroActivity.this.lambda$showDialogToReconfirmCancelingBackup$15();
            }
        });
    }

    public /* synthetic */ void lambda$showDialogToReconfirmCancelingBackup$14() {
        MaintenanceModeUtils.startCloudActivity(this.mContext);
    }

    public /* synthetic */ void lambda$showDialogToReconfirmCancelingBackup$15() {
        MaintenanceModeUtils.sendLoggingDataToSA(this.mContext, "7068", null);
    }

    public /* synthetic */ void lambda$showDialogToReconfirmCancelingBackup$17() {
        MaintenanceModeUtils.sendLoggingDataToSA(this.mContext, "7069", null);
    }

    public /* synthetic */ void lambda$showDialogToReconfirmCancelingBackup$18(DialogInterface dialog, int which) {
        this.mLoggingExecutor.submit(new Runnable() { // from class: com.samsung.android.core.pm.mm.MaintenanceModeIntroActivity$$ExternalSyntheticLambda20
            @Override // java.lang.Runnable
            public final void run() {
                MaintenanceModeIntroActivity.this.lambda$showDialogToReconfirmCancelingBackup$17();
            }
        });
    }

    public /* synthetic */ void lambda$showDialogToReconfirmCancelingBackup$19() {
        MaintenanceModeUtils.sendLoggingDataToSA(this.mContext, "7069", null);
    }

    public /* synthetic */ void lambda$showDialogToReconfirmCancelingBackup$20(DialogInterface dialog) {
        this.mLoggingExecutor.submit(new Runnable() { // from class: com.samsung.android.core.pm.mm.MaintenanceModeIntroActivity$$ExternalSyntheticLambda22
            @Override // java.lang.Runnable
            public final void run() {
                MaintenanceModeIntroActivity.this.lambda$showDialogToReconfirmCancelingBackup$19();
            }
        });
    }

    private void showDialogToConfirmRestart() {
        int i;
        int i2;
        this.mDialogView = LayoutInflater.from(this).inflate(R.layout.dialog_maintenance_mode_intro, (ViewGroup) null);
        adjustDialogLayout(getResources().getConfiguration());
        final CheckedTextView checkedTextView = (CheckedTextView) this.mDialogView.findViewById(R.id.maintenance_mode_intro_dialog_checked_textview);
        checkedTextView.setOnClickListener(new View.OnClickListener() { // from class: com.samsung.android.core.pm.mm.MaintenanceModeIntroActivity$$ExternalSyntheticLambda4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CheckedTextView.this.toggle();
            }
        });
        checkedTextView.setTextSize(0, MaintenanceModeUtils.getFontSize(this.mContext, R.dimen.maintenance_mode_common_checkbox_text_size, 1.1f));
        AlertDialog.Builder builder = new AlertDialog.Builder(this).setView(this.mDialogView).setPositiveButton(R.string.maintenance_mode_dialog_button_text_restart, new DialogInterface.OnClickListener() { // from class: com.samsung.android.core.pm.mm.MaintenanceModeIntroActivity$$ExternalSyntheticLambda5
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i3) {
                MaintenanceModeIntroActivity.this.lambda$showDialogToConfirmRestart$26(checkedTextView, dialogInterface, i3);
            }
        });
        AlertDialog dialog = builder.create();
        dialog.getWindow().setGravity(80);
        TextView dialogTextView = (TextView) this.mDialogView.findViewById(R.id.maintenance_mode_intro_dialog_textview);
        StringBuilder sb = new StringBuilder();
        Resources resources = this.mResources;
        if (this.mIsTablet) {
            i = R.string.maintenance_mode_intro_dialog_message_tablet;
        } else {
            i = R.string.maintenance_mode_intro_dialog_message_phone;
        }
        StringBuilder append = sb.append(resources.getString(i)).append("\n\n");
        Resources resources2 = this.mResources;
        if (this.mIsTablet) {
            i2 = R.string.maintenance_mode_intro_dialog_textview_message_tablet;
        } else {
            i2 = R.string.maintenance_mode_intro_dialog_textview_message_phone;
        }
        String textViewMessage = append.append(resources2.getString(i2)).toString();
        dialogTextView.setText(textViewMessage);
        dialogTextView.setTextSize(0, MaintenanceModeUtils.getFontSize(this.mContext, R.dimen.maintenance_mode_common_text_size));
        dialog.show();
    }

    public /* synthetic */ void lambda$showDialogToConfirmRestart$26(CheckedTextView checkedTextView, DialogInterface dialog, int which) {
        if (!MaintenanceModeUtils.isSecureLockSet(this.mContext)) {
            showDialogToInformSecureLockIsNeeded();
            return;
        }
        this.mTurnOnButton.setClickable(false);
        if (this.mIsTablet) {
            setWaitingViewRotation();
        }
        final boolean isChecked = checkedTextView.isChecked();
        if (isChecked) {
            this.mWm.addView(this.mWaitingView, this.mViewWindowParams);
            new Thread(new Runnable() { // from class: com.samsung.android.core.pm.mm.MaintenanceModeIntroActivity$$ExternalSyntheticLambda14
                @Override // java.lang.Runnable
                public final void run() {
                    MaintenanceModeIntroActivity.this.lambda$showDialogToConfirmRestart$23();
                }
            }).start();
        } else {
            this.mWm.addView(this.mDumpView, this.mViewWindowParams);
            triggerDump();
        }
        this.mLoggingExecutor.submit(new Runnable() { // from class: com.samsung.android.core.pm.mm.MaintenanceModeIntroActivity$$ExternalSyntheticLambda15
            @Override // java.lang.Runnable
            public final void run() {
                MaintenanceModeIntroActivity.this.lambda$showDialogToConfirmRestart$24(isChecked);
            }
        });
        this.mLoggingExecutor.submit(new Runnable() { // from class: com.samsung.android.core.pm.mm.MaintenanceModeIntroActivity$$ExternalSyntheticLambda16
            @Override // java.lang.Runnable
            public final void run() {
                MaintenanceModeIntroActivity.this.lambda$showDialogToConfirmRestart$25();
            }
        });
    }

    public /* synthetic */ void lambda$showDialogToConfirmRestart$23() {
        UserInfo userInfo = enterMaintenanceMode();
        if (userInfo == null) {
            this.mWm.removeView(this.mWaitingView);
            runOnUiThread(new Runnable() { // from class: com.samsung.android.core.pm.mm.MaintenanceModeIntroActivity$$ExternalSyntheticLambda28
                @Override // java.lang.Runnable
                public final void run() {
                    MaintenanceModeIntroActivity.this.lambda$showDialogToConfirmRestart$22();
                }
            });
        }
    }

    public /* synthetic */ void lambda$showDialogToConfirmRestart$22() {
        if (MaintenanceModeUtils.isLowOnStorage(this.mContext)) {
            showDialogToNotifyLowOnStorage();
        }
        this.mTurnOnButton.setClickable(true);
    }

    public /* synthetic */ void lambda$showDialogToConfirmRestart$24(boolean isChecked) {
        MaintenanceModeUtils.sendLoggingDataToSA(this.mContext, "7070", isChecked ? "1" : "0");
    }

    public /* synthetic */ void lambda$showDialogToConfirmRestart$25() {
        MaintenanceModeUtils.sendLoggingDataToSA(this.mContext, "7071", null);
    }

    private void setWaitingViewRotation() {
        Display display = getDisplay();
        if (display != null) {
            int rotation = display.getRotation();
            switch (rotation) {
                case 0:
                    this.mViewWindowParams.screenOrientation = 1;
                    return;
                case 1:
                    this.mViewWindowParams.screenOrientation = 0;
                    return;
                case 2:
                    this.mViewWindowParams.screenOrientation = 9;
                    return;
                case 3:
                    this.mViewWindowParams.screenOrientation = 8;
                    return;
                default:
                    return;
            }
        }
    }

    private void adjustDialogLayout(Configuration config) {
        View view;
        if (this.mIsTablet) {
            return;
        }
        if ((!this.mIsFold || config.semDisplayDeviceType == 5) && (view = this.mDialogView) != null) {
            ScrollView dialogScrollView = (ScrollView) view.findViewById(R.id.maintenance_mode_intro_dialog_scrollview);
            ViewGroup.MarginLayoutParams dialogScrollViewLayoutParams = (ViewGroup.MarginLayoutParams) dialogScrollView.getLayoutParams();
            View checkBoxLayout = this.mDialogView.findViewById(R.id.maintenance_mode_intro_dialog_checkbox_layout);
            ViewGroup.MarginLayoutParams checkBoxLayoutParams = (ViewGroup.MarginLayoutParams) checkBoxLayout.getLayoutParams();
            if (config.orientation == 2) {
                dialogScrollViewLayoutParams.topMargin = this.mResources.getDimensionPixelSize(R.dimen.maintenance_mode_dialog_margin_top_land);
                int checkBoxPadding = this.mResources.getDimensionPixelSize(R.dimen.maintenance_mode_dialog_checkbox_padding_top_bottom_land);
                checkBoxLayout.setPadding(0, checkBoxPadding, 0, checkBoxPadding);
                checkBoxLayoutParams.bottomMargin = this.mResources.getDimensionPixelSize(R.dimen.maintenance_mode_dialog_checkbox_margin_bottom_land);
            } else {
                dialogScrollViewLayoutParams.topMargin = this.mResources.getDimensionPixelSize(R.dimen.maintenance_mode_dialog_margin_top);
                int checkBoxPadding2 = this.mResources.getDimensionPixelSize(R.dimen.maintenance_mode_dialog_checkbox_padding_top_bottom);
                checkBoxLayout.setPadding(0, checkBoxPadding2, 0, checkBoxPadding2);
                checkBoxLayoutParams.bottomMargin = this.mResources.getDimensionPixelSize(R.dimen.maintenance_mode_dialog_checkbox_margin_bottom);
            }
            dialogScrollView.setLayoutParams(dialogScrollViewLayoutParams);
            checkBoxLayout.setLayoutParams(checkBoxLayoutParams);
        }
    }

    private void triggerDump() {
        SystemProperties.set("bugreport.mode", "light_mode");
        SystemProperties.set("ctl.start", "bugreportm");
        this.mDumpEndTime = SystemClock.elapsedRealtime() + 300000;
        this.mRootView.postDelayed(new Runnable() { // from class: com.samsung.android.core.pm.mm.MaintenanceModeIntroActivity$$ExternalSyntheticLambda21
            @Override // java.lang.Runnable
            public final void run() {
                MaintenanceModeIntroActivity.this.lambda$triggerDump$27();
            }
        }, 10000L);
    }

    /* renamed from: checkPendingDump, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public void lambda$triggerDump$27() {
        if (isDumpRunning() && !isDumpTimeout()) {
            this.mRootView.postDelayed(new Runnable() { // from class: com.samsung.android.core.pm.mm.MaintenanceModeIntroActivity$$ExternalSyntheticLambda23
                @Override // java.lang.Runnable
                public final void run() {
                    MaintenanceModeIntroActivity.this.lambda$checkPendingDump$28();
                }
            }, 1000L);
        } else {
            new Thread(new Runnable() { // from class: com.samsung.android.core.pm.mm.MaintenanceModeIntroActivity$$ExternalSyntheticLambda24
                @Override // java.lang.Runnable
                public final void run() {
                    MaintenanceModeIntroActivity.this.lambda$checkPendingDump$30();
                }
            }).start();
        }
    }

    public /* synthetic */ void lambda$checkPendingDump$30() {
        UserInfo userInfo = enterMaintenanceMode();
        if (userInfo == null) {
            this.mWm.removeView(this.mDumpView);
            runOnUiThread(new Runnable() { // from class: com.samsung.android.core.pm.mm.MaintenanceModeIntroActivity$$ExternalSyntheticLambda6
                @Override // java.lang.Runnable
                public final void run() {
                    MaintenanceModeIntroActivity.this.lambda$checkPendingDump$29();
                }
            });
        }
    }

    public /* synthetic */ void lambda$checkPendingDump$29() {
        if (MaintenanceModeUtils.isLowOnStorage(this.mContext)) {
            showDialogToNotifyLowOnStorage();
        }
        this.mTurnOnButton.setClickable(true);
    }

    private boolean isDumpRunning() {
        return SystemProperties.getInt("dumpstate.is_running", 0) != 0;
    }

    private boolean isDumpTimeout() {
        long remainingTime = this.mDumpEndTime - SystemClock.elapsedRealtime();
        if (remainingTime <= 0) {
            Log.i("MaintenanceMode", "Dumpstate wait timed out");
            return true;
        }
        return false;
    }

    private UserInfo enterMaintenanceMode() {
        if (!MaintenanceModeUtils.isSecureLockSet(this.mContext)) {
            return null;
        }
        try {
            UserManager um = (UserManager) this.mContext.getSystemService("user");
            return um.createUser(this.mResources.getString(R.string.maintenance_mode_name), 525312);
        } catch (Exception e) {
            Log.i("MaintenanceMode", "Exception", e);
            return null;
        }
    }
}
