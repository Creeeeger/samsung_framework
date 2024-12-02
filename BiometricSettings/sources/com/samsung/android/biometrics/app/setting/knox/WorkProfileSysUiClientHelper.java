package com.samsung.android.biometrics.app.setting.knox;

import android.app.AlertDialog;
import android.app.admin.DevicePolicyManager;
import android.content.Context;
import android.content.DialogInterface;
import android.content.pm.UserInfo;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.Process;
import android.os.SystemProperties;
import android.os.UserManager;
import android.text.TextUtils;
import android.util.Log;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.Window;
import android.view.WindowInsets;
import android.view.WindowManager;
import android.view.accessibility.AccessibilityManager;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.view.menu.SubMenuBuilder$$ExternalSyntheticOutline0;
import com.android.internal.widget.LockPatternUtils;
import com.android.internal.widget.LockPatternView;
import com.samsung.android.biometrics.app.setting.R;
import com.samsung.android.biometrics.app.setting.ResourceManager;
import com.samsung.android.biometrics.app.setting.Utils;
import com.samsung.android.biometrics.app.setting.prompt.PromptConfig;
import com.samsung.android.knox.ContainerProxy;
import com.samsung.android.knox.SemPersonaManager;
import com.samsung.android.knox.devicesecurity.PasswordPolicy;
import java.io.ByteArrayOutputStream;

/* loaded from: classes.dex */
public final class WorkProfileSysUiClientHelper implements KnoxSysUiClientHelper {
    private static final int[][] DETAIL_TEXTS = {new int[]{R.string.sec_draw_pattern_WC}, new int[]{R.string.sec_enter_pin_WC}, new int[]{R.string.sec_enter_password_WC}};
    private LayoutInflater layoutInflater;
    private final AccessibilityManager mAccessibilityManager;
    private AlertDialog mAlertDialog;
    private Context mContext;
    private DevicePolicyManager mDevicePolicyManager;
    private boolean mIsPasswordShown;
    private LockPatternUtils mLockPatternUtils;
    private final PromptConfig mPromptConfig;
    private UserManager mUserManager;

    /* renamed from: com.samsung.android.biometrics.app.setting.knox.WorkProfileSysUiClientHelper$1, reason: invalid class name */
    final class AnonymousClass1 implements DialogInterface.OnClickListener {
        @Override // android.content.DialogInterface.OnClickListener
        public final void onClick(DialogInterface dialogInterface, int i) {
            dialogInterface.dismiss();
        }
    }

    /* renamed from: -$$Nest$misInLandscapeMode, reason: not valid java name */
    static boolean m228$$Nest$misInLandscapeMode(WorkProfileSysUiClientHelper workProfileSysUiClientHelper) {
        int displayRotation = KnoxUtils.getDisplayRotation(workProfileSysUiClientHelper.mContext);
        return displayRotation == 1 || displayRotation == 3;
    }

    public WorkProfileSysUiClientHelper(Context context, PromptConfig promptConfig) {
        this.mContext = context;
        this.mPromptConfig = promptConfig;
        this.layoutInflater = LayoutInflater.from(context);
        this.mAccessibilityManager = (AccessibilityManager) context.getSystemService(AccessibilityManager.class);
        this.mLockPatternUtils = new LockPatternUtils(context);
        this.mDevicePolicyManager = (DevicePolicyManager) context.getSystemService("device_policy");
        this.mUserManager = (UserManager) context.getSystemService("user");
    }

    private void setTextOrHide(TextView textView, CharSequence charSequence, KnoxAuthCredentialView knoxAuthCredentialView) {
        if (TextUtils.isEmpty(charSequence)) {
            textView.setVisibility(8);
        } else {
            textView.setText(charSequence);
        }
        Utils.notifyAccessibilityContentChanged(this.mAccessibilityManager, knoxAuthCredentialView);
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x038c  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x03bf  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x03b2  */
    @Override // com.samsung.android.biometrics.app.setting.knox.KnoxSysUiClientHelper
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final com.samsung.android.biometrics.app.setting.knox.KnoxAuthCredentialView changeCredentialViewIfNeeded(android.view.View r18) {
        /*
            Method dump skipped, instructions count: 972
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.samsung.android.biometrics.app.setting.knox.WorkProfileSysUiClientHelper.changeCredentialViewIfNeeded(android.view.View):com.samsung.android.biometrics.app.setting.knox.KnoxAuthCredentialView");
    }

    @Override // com.samsung.android.biometrics.app.setting.knox.KnoxSysUiClientHelper
    public final TextView getDetailsTextView(KnoxAuthCredentialView knoxAuthCredentialView) {
        return (TextView) knoxAuthCredentialView.findViewById(R.id.detailsText);
    }

    @Override // com.samsung.android.biometrics.app.setting.knox.KnoxSysUiClientHelper
    public final String getErrorMessage() {
        int keyguardStoredPasswordQuality = this.mLockPatternUtils.getKeyguardStoredPasswordQuality(this.mPromptConfig.getUserId());
        if (keyguardStoredPasswordQuality == 65536) {
            return this.mContext.getString(R.string.cryptkeeper_wrong_pattern);
        }
        if (keyguardStoredPasswordQuality != 131072 && keyguardStoredPasswordQuality != 196608) {
            if (keyguardStoredPasswordQuality != 262144 && keyguardStoredPasswordQuality != 327680 && keyguardStoredPasswordQuality != 393216) {
                if (keyguardStoredPasswordQuality != 458752) {
                    if (keyguardStoredPasswordQuality != 524288) {
                        return "";
                    }
                }
            }
            return this.mContext.getString(R.string.cryptkeeper_wrong_password);
        }
        return this.mContext.getString(R.string.cryptkeeper_wrong_pin);
    }

    public final void handleAuthenticationFailed() {
        Log.d("KKG::WorkProfileSysUiClientHelper", "onAuthenticationFailed");
        DevicePolicyManager devicePolicyManager = this.mDevicePolicyManager;
        PromptConfig promptConfig = this.mPromptConfig;
        devicePolicyManager.reportFailedBiometricAttempt(promptConfig.getUserId());
        int currentFailedBiometricAttempts = this.mDevicePolicyManager.getCurrentFailedBiometricAttempts(promptConfig.getUserId());
        if (currentFailedBiometricAttempts < 50) {
            if (currentFailedBiometricAttempts == 0 || currentFailedBiometricAttempts % 5 != 0) {
                return;
            }
            this.mLockPatternUtils.setBiometricAttemptDeadline(promptConfig.getUserId(), 30000);
            if (KnoxUtils.isMultifactorEnabledForWork(this.mContext, promptConfig.getUserId())) {
                promptConfig.getCallback().onDismissed(5, null);
                return;
            } else if (Utils.isDesktopMode(this.mContext)) {
                promptConfig.getCallback().onDismissed(5, null);
                return;
            } else {
                promptConfig.getCallback().onDeviceCredentialPressed();
                return;
            }
        }
        Log.d("KKG::WorkProfileSysUiClientHelper", "isBiometricDeadlineForWorkProfile ( too many failed. )");
        this.mLockPatternUtils.clearBiometricAttemptDeadline(promptConfig.getUserId());
        if (KnoxUtils.isMultifactorEnabledForWork(this.mContext, promptConfig.getUserId())) {
            int userId = promptConfig.getUserId();
            Bundle bundle = new Bundle();
            bundle.putInt("android.intent.extra.user_handle", userId);
            ContainerProxy.sendPolicyUpdate("knox.container.proxy.POLICY_ADMIN_LOCK", bundle);
            promptConfig.getCallback().onDismissed(5, null);
            return;
        }
        this.mLockPatternUtils.requireStrongAuth(4096, promptConfig.getUserId());
        if (Utils.isDesktopMode(this.mContext)) {
            promptConfig.getCallback().onDismissed(5, null);
        } else {
            promptConfig.getCallback().onDeviceCredentialPressed();
        }
    }

    public final void handleAuthenticationSucceeded() {
        Log.d("KKG::WorkProfileSysUiClientHelper", "onAuthenticationSucceeded");
        LockPatternUtils lockPatternUtils = this.mLockPatternUtils;
        PromptConfig promptConfig = this.mPromptConfig;
        lockPatternUtils.clearBiometricAttemptDeadline(promptConfig.getUserId());
        this.mDevicePolicyManager.reportSuccessfulBiometricAttempt(promptConfig.getUserId());
    }

    public final boolean interceptHandleAuthenticationSucceededIfNeeded() {
        Log.d("KKG::WorkProfileSysUiClientHelper", "interceptHandleAuthenticationSucceededIfNeeded");
        Context context = this.mContext;
        PromptConfig promptConfig = this.mPromptConfig;
        if (!KnoxUtils.isMultifactorEnabledForWork(context, promptConfig.getUserId())) {
            return false;
        }
        if (promptConfig.isKnoxOnlyConfirmBiometric()) {
            Log.d("KKG::WorkProfileSysUiClientHelper", "Only confirm biometric case when two-factor.");
            return false;
        }
        if (SemPersonaManager.appliedPasswordPolicy(promptConfig.getUserId())) {
            Log.d("KKG::WorkProfileSysUiClientHelper", "Applied password policy with multificator enabled.");
            return false;
        }
        promptConfig.getCallback().onDeviceCredentialPressed();
        return true;
    }

    @Override // com.samsung.android.biometrics.app.setting.knox.KnoxSysUiClientHelper
    public final boolean isForgotbtnDialogShowing() {
        AlertDialog alertDialog = this.mAlertDialog;
        return alertDialog != null && alertDialog.isShowing();
    }

    @Override // com.samsung.android.biometrics.app.setting.knox.KnoxSysUiClientHelper
    public final void modifyLayoutParamsIfNeeded(WindowManager.LayoutParams layoutParams) {
        layoutParams.setFitInsetsTypes(layoutParams.getFitInsetsTypes() & (~WindowInsets.Type.navigationBars()));
        layoutParams.layoutInDisplayCutoutMode = 1;
        layoutParams.privateFlags |= 134217728;
        layoutParams.insetsFlags.behavior = 2;
    }

    @Override // com.samsung.android.biometrics.app.setting.knox.KnoxSysUiClientHelper
    public final void onAttachedPatternViewToWindow(LockPatternView lockPatternView) {
        lockPatternView.setColors(-1, -1, -65536);
    }

    @Override // com.samsung.android.biometrics.app.setting.knox.KnoxSysUiClientHelper
    public final void onAttachedToWindow(KnoxAuthCredentialView knoxAuthCredentialView, TextView textView, TextView textView2, TextView textView3, ImageView imageView) {
        Bitmap bitmap;
        byte[] bArr;
        TextView textView4 = (TextView) knoxAuthCredentialView.findViewById(R.id.knoxTitleText);
        if (textView4 != null) {
            textView4.setText(this.mContext.getString(R.string.biometric_prompt_default_title_work_profile));
        }
        PromptConfig promptConfig = this.mPromptConfig;
        BitmapDrawable bitmapDrawable = null;
        if (promptConfig.getPromptInfo().isUseDefaultTitle() && this.mContext.getString(R.string.biometric_prompt_default_title).equals(promptConfig.getPromptInfo().getTitle())) {
            setTextOrHide(textView, null, knoxAuthCredentialView);
        } else {
            setTextOrHide(textView, promptConfig.getPromptInfo().getTitle(), knoxAuthCredentialView);
        }
        setTextOrHide(textView2, promptConfig.getPromptInfo().getSubtitle(), knoxAuthCredentialView);
        setTextOrHide(textView3, promptConfig.getPromptInfo().getDescription(), knoxAuthCredentialView);
        Log.d("KKG::WorkProfileSysUiClientHelper", "Applying default work icon");
        Drawable drawable = new ResourceManager(this.mContext, "com.android.settings").getDrawable("knox_basic");
        if (drawable instanceof BitmapDrawable) {
            bitmap = ((BitmapDrawable) drawable).getBitmap();
        } else {
            int width = !drawable.getBounds().isEmpty() ? drawable.getBounds().width() : drawable.getIntrinsicWidth();
            int height = !drawable.getBounds().isEmpty() ? drawable.getBounds().height() : drawable.getIntrinsicHeight();
            if (width <= 0) {
                width = 1;
            }
            if (height <= 0) {
                height = 1;
            }
            Bitmap createBitmap = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas(createBitmap);
            drawable.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
            drawable.draw(canvas);
            bitmap = createBitmap;
        }
        if (bitmap != null) {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            bitmap.compress(Bitmap.CompressFormat.PNG, 100, byteArrayOutputStream);
            bArr = byteArrayOutputStream.toByteArray();
        } else {
            bArr = null;
        }
        if (bArr != null) {
            bitmapDrawable = new BitmapDrawable(this.mContext.getResources(), BitmapFactory.decodeByteArray(bArr, 0, bArr.length));
            bitmapDrawable.setTint(-1);
        }
        imageView.setImageDrawable(bitmapDrawable);
    }

    @Override // com.samsung.android.biometrics.app.setting.knox.KnoxSysUiClientHelper
    public final void onCredentialVerified(int i, boolean z, View view, int i2, TextView textView) {
        int i3;
        int i4;
        boolean isPremiumContainer;
        SemPersonaManager semPersonaManager;
        PromptConfig promptConfig = this.mPromptConfig;
        if (z) {
            this.mLockPatternUtils.clearBiometricAttemptDeadline(promptConfig.getUserId());
            return;
        }
        if (i2 > 0) {
            if (i != 1) {
                if (i != 2) {
                    if (i != 3) {
                        throw new IllegalStateException(SubMenuBuilder$$ExternalSyntheticOutline0.m("Unknown credential type: ", i));
                    }
                } else if (view instanceof LockPatternView) {
                    ((LockPatternView) view).setVisibility(4);
                }
            }
            if (view instanceof EditText) {
                EditText editText = (EditText) view;
                editText.setInputType(0);
                editText.setClickable(false);
                editText.setCursorVisible(false);
                editText.setFocusableInTouchMode(false);
                ((InputMethodManager) this.mContext.getSystemService(InputMethodManager.class)).hideSoftInputFromWindow(editText.getWindowToken(), 0);
            }
        }
        Log.d("KKG::WorkProfileSysUiClientHelper", "reportFailedAttempt");
        int currentFailedPasswordAttempts = this.mLockPatternUtils.getCurrentFailedPasswordAttempts(promptConfig.getUserId());
        int maximumFailedPasswordsForWipe = this.mLockPatternUtils.getMaximumFailedPasswordsForWipe(promptConfig.getUserId());
        PasswordPolicy passwordPolicy = KnoxUtils.getPasswordPolicy(this.mContext, promptConfig.getUserId());
        if (passwordPolicy != null) {
            i3 = passwordPolicy.getMaximumFailedPasswordsForDeviceDisable();
        } else {
            Cursor query = this.mContext.getContentResolver().query(Uri.parse("content://com.sec.knox.provider/PasswordPolicy2"), null, "getMaximumFailedPasswordsForDisable", new String[]{Integer.toString(KnoxUtils.isChangeRequested(this.mContext, promptConfig.getUserId()) > 0 ? promptConfig.getUserId() * 100000 : promptConfig.getUserId() == 0 ? 0 : Process.myUid())}, null);
            if (query != null) {
                try {
                    query.moveToFirst();
                    i3 = query.getInt(query.getColumnIndex("getMaximumFailedPasswordsForDisable"));
                } catch (Exception unused) {
                    i3 = 0;
                } catch (Throwable th) {
                    query.close();
                    throw th;
                }
                query.close();
            } else {
                i3 = 0;
            }
        }
        int min = (maximumFailedPasswordsForWipe <= 0 || i3 <= 0) ? maximumFailedPasswordsForWipe > 0 ? maximumFailedPasswordsForWipe : i3 > 0 ? i3 : 0 : Math.min(maximumFailedPasswordsForWipe, i3);
        if (min <= 0 || currentFailedPasswordAttempts <= 0 || (i4 = min - currentFailedPasswordAttempts) > 10) {
            return;
        }
        textView.setText(String.format(i4 == 1 ? this.mContext.getString(R.string.keyguard_password_attempt_count_pin_code) : this.mContext.getString(R.string.keyguard_password_attempts_count_pin_code), Integer.valueOf(i4)));
        if (i4 > 5) {
            return;
        }
        Context context = this.mContext;
        int userId = promptConfig.getUserId();
        String string = (context == null || (semPersonaManager = (SemPersonaManager) context.getSystemService("persona")) == null) ? "Knox" : SemPersonaManager.isSecureFolderId(userId) ? context.getString(R.string.secure_folder_title) : semPersonaManager.getContainerName(userId, context);
        Context context2 = this.mContext;
        int userId2 = promptConfig.getUserId();
        UserInfo userInfo = UserManager.get(context2).getUserInfo(userId2);
        if (userInfo == null) {
            Log.e("KKG::KnoxUtils", userId2 + " not found...");
            isPremiumContainer = false;
        } else {
            isPremiumContainer = userInfo.isPremiumContainer();
        }
        Log.d("KKG::WorkProfileSysUiClientHelper", "Under than 5 attempts left : " + string + " : " + isPremiumContainer + " Wipe : " + maximumFailedPasswordsForWipe + " Disable : " + i3);
        String format = min == maximumFailedPasswordsForWipe ? currentFailedPasswordAttempts == 1 ? i4 == 1 ? isPremiumContainer ? String.format(this.mContext.getString(R.string.incorrect_dialog_wipe_1), string, string) : this.mContext.getString(R.string.incorrect_dialog_wipe_base_1) : isPremiumContainer ? String.format(this.mContext.getString(R.string.incorrect_dialog_wipe_2), string, Integer.valueOf(i4), string) : String.format(this.mContext.getString(R.string.incorrect_dialog_wipe_base_2), Integer.valueOf(i4)) : i4 == 1 ? isPremiumContainer ? String.format(this.mContext.getString(R.string.incorrect_dialog_wipe_4), Integer.valueOf(currentFailedPasswordAttempts), string, string) : String.format(this.mContext.getString(R.string.incorrect_dialog_wipe_base_4), Integer.valueOf(currentFailedPasswordAttempts)) : isPremiumContainer ? String.format(this.mContext.getString(R.string.incorrect_dialog_wipe_3), Integer.valueOf(currentFailedPasswordAttempts), string, Integer.valueOf(i4), string) : String.format(this.mContext.getString(R.string.incorrect_dialog_wipe_base_3), Integer.valueOf(currentFailedPasswordAttempts), Integer.valueOf(i4)) : currentFailedPasswordAttempts == 1 ? min == 1 ? String.format(this.mContext.getString(R.string.incorrect_dialog_1), string, string) : String.format(this.mContext.getString(R.string.incorrect_dialog_2), string, Integer.valueOf(i4), string) : i4 == 1 ? String.format(this.mContext.getString(R.string.incorrect_dialog_4), Integer.valueOf(currentFailedPasswordAttempts), string, string) : String.format(this.mContext.getString(R.string.incorrect_dialog_3), Integer.valueOf(currentFailedPasswordAttempts), string, Integer.valueOf(i4), string);
        if (i4 < 1) {
            if (min != maximumFailedPasswordsForWipe) {
                String str = SystemProperties.get("ro.organization_owned");
                if (!(str != null && str.equals("true")) || passwordPolicy == null) {
                    int userId3 = promptConfig.getUserId();
                    Bundle bundle = new Bundle();
                    bundle.putInt("android.intent.extra.user_handle", userId3);
                    ContainerProxy.sendPolicyUpdate("knox.container.proxy.POLICY_ADMIN_LOCK", bundle);
                } else {
                    passwordPolicy.lock();
                }
            }
            promptConfig.getCallback().onUserCancel(3);
            return;
        }
        final boolean z2 = i4 < 1;
        AlertDialog.Builder builder = new AlertDialog.Builder((this.mContext.getResources().getConfiguration().uiMode & 48) == 32 ? new ContextThemeWrapper(this.mContext.getApplicationContext(), android.R.style.Theme.DeviceDefault) : new ContextThemeWrapper(this.mContext.getApplicationContext(), android.R.style.Theme.DeviceDefault.Light));
        builder.setTitle((CharSequence) null);
        builder.setMessage(format);
        builder.setCancelable(true);
        builder.setPositiveButton(android.R.string.ok, new AnonymousClass1());
        AlertDialog create = builder.create();
        this.mAlertDialog = create;
        Window window = create.getWindow();
        window.setType(2017);
        window.setGravity(80);
        this.mAlertDialog.setCanceledOnTouchOutside(false);
        this.mAlertDialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.samsung.android.biometrics.app.setting.knox.WorkProfileSysUiClientHelper.2
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                if (z2) {
                    WorkProfileSysUiClientHelper.this.mPromptConfig.getCallback().onUserCancel(3);
                }
            }
        });
        this.mAlertDialog.show();
    }

    @Override // com.samsung.android.biometrics.app.setting.knox.KnoxSysUiClientHelper
    public final void onDetachedFromWindow() {
        AlertDialog alertDialog = this.mAlertDialog;
        if (alertDialog == null || !alertDialog.isShowing()) {
            return;
        }
        this.mAlertDialog.dismiss();
    }

    @Override // com.samsung.android.biometrics.app.setting.knox.KnoxSysUiClientHelper
    public final void onErrorTimeoutFinish(KnoxAuthCredentialView knoxAuthCredentialView, int i, View view) {
        final int i2 = 0;
        final int i3 = 1;
        if (i == 1) {
            if (view instanceof EditText) {
                final EditText editText = (EditText) view;
                editText.setClickable(true);
                editText.setInputType(18);
                editText.setCursorVisible(true);
                editText.setFocusableInTouchMode(true);
                final InputMethodManager inputMethodManager = (InputMethodManager) this.mContext.getSystemService(InputMethodManager.class);
                knoxAuthCredentialView.postDelayed(new Runnable() { // from class: com.samsung.android.biometrics.app.setting.knox.WorkProfileSysUiClientHelper$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        switch (i2) {
                            case 0:
                                EditText editText2 = editText;
                                InputMethodManager inputMethodManager2 = inputMethodManager;
                                editText2.requestFocus();
                                inputMethodManager2.showSoftInput(editText2, 1);
                                break;
                            default:
                                EditText editText3 = editText;
                                InputMethodManager inputMethodManager3 = inputMethodManager;
                                editText3.requestFocus();
                                inputMethodManager3.showSoftInput(editText3, 1);
                                break;
                        }
                    }
                }, 100L);
                return;
            }
            return;
        }
        if (i == 2) {
            if (view instanceof LockPatternView) {
                ((LockPatternView) view).setVisibility(0);
            }
        } else {
            if (i != 3) {
                throw new IllegalStateException(SubMenuBuilder$$ExternalSyntheticOutline0.m("Unknown credential type: ", i));
            }
            if (view instanceof EditText) {
                final EditText editText2 = (EditText) view;
                editText2.setClickable(true);
                editText2.setInputType(129);
                editText2.setCursorVisible(true);
                editText2.setFocusableInTouchMode(true);
                final InputMethodManager inputMethodManager2 = (InputMethodManager) this.mContext.getSystemService(InputMethodManager.class);
                knoxAuthCredentialView.postDelayed(new Runnable() { // from class: com.samsung.android.biometrics.app.setting.knox.WorkProfileSysUiClientHelper$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        switch (i3) {
                            case 0:
                                EditText editText22 = editText2;
                                InputMethodManager inputMethodManager22 = inputMethodManager2;
                                editText22.requestFocus();
                                inputMethodManager22.showSoftInput(editText22, 1);
                                break;
                            default:
                                EditText editText3 = editText2;
                                InputMethodManager inputMethodManager3 = inputMethodManager2;
                                editText3.requestFocus();
                                inputMethodManager3.showSoftInput(editText3, 1);
                                break;
                        }
                    }
                }, 100L);
            }
        }
    }

    @Override // com.samsung.android.biometrics.app.setting.knox.KnoxSysUiClientHelper
    public final void setBiometricAttemptDeadline(int i) {
        this.mLockPatternUtils.setBiometricAttemptDeadline(this.mPromptConfig.getUserId(), i);
    }

    @Override // com.samsung.android.biometrics.app.setting.knox.KnoxSysUiClientHelper
    public final void setDetailText(TextView textView) {
        int keyguardStoredPasswordQuality = this.mLockPatternUtils.getKeyguardStoredPasswordQuality(this.mPromptConfig.getUserId());
        int[][] iArr = DETAIL_TEXTS;
        String string = keyguardStoredPasswordQuality != 65536 ? (keyguardStoredPasswordQuality == 131072 || keyguardStoredPasswordQuality == 196608) ? this.mContext.getResources().getString(iArr[1][0]) : (keyguardStoredPasswordQuality == 262144 || keyguardStoredPasswordQuality == 327680 || keyguardStoredPasswordQuality == 393216) ? this.mContext.getResources().getString(iArr[2][0]) : "" : this.mContext.getResources().getString(iArr[0][0]);
        if (textView != null) {
            textView.setText(string);
        }
    }

    @Override // com.samsung.android.biometrics.app.setting.knox.KnoxSysUiClientHelper
    public final void setErrorTimerText(TextView textView, long j) {
        int round = (Math.round(j / 1000) % 60) + 1;
        int floor = (((int) Math.floor(j / 60000)) % 60) + 1;
        if (round <= 0) {
            return;
        }
        if (floor > 1) {
            textView.setText(this.mContext.getResources().getQuantityString(R.plurals.sec_lockpattern_too_many_failed_confirmation_attempts_footer_min, floor, Integer.valueOf(floor)));
        } else if (round == 60) {
            textView.setText(this.mContext.getResources().getQuantityString(R.plurals.sec_lockpattern_too_many_failed_confirmation_attempts_footer_min, floor, Integer.valueOf(floor)));
        } else {
            textView.setText(this.mContext.getResources().getQuantityString(R.plurals.sec_lockpattern_too_many_failed_confirmation_attempts_footer_sec, round, Integer.valueOf(round)));
        }
    }

    @Override // com.samsung.android.biometrics.app.setting.knox.KnoxSysUiClientHelper
    public final void onConfigurationChanged() {
    }
}
