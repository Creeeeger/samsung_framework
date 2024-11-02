.class public final Lcom/android/keyguard/KeyguardCarrierViewController;
.super Lcom/android/keyguard/KeyguardInputViewController;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public mBroadcastReceiver:Lcom/android/keyguard/KeyguardCarrierViewController$3;

.field public final mContext:Landroid/content/Context;

.field public final mEmergencyButtonCallback:Lcom/android/keyguard/KeyguardCarrierViewController$4;

.field public final mEmergencyButtonController:Lcom/android/keyguard/EmergencyButtonController;

.field public mIsShowingOwnerCallButton:Z

.field public final mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field public final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public final mOwnerCallButton:Landroid/widget/Button;

.field public final mOwnerInfo:Landroid/widget/TextView;

.field public mOwnerMessage:Ljava/lang/String;

.field public mPhoneState:I

.field public final mPhoneStateListener:Lcom/android/keyguard/KeyguardCarrierViewController$1;

.field public final mTelephonyManager:Landroid/telephony/TelephonyManager;

.field public final mUnlockButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardCarrierView;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/EmergencyButtonController;Landroid/telephony/TelephonyManager;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/systemui/flags/FeatureFlags;)V
    .locals 7

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p1

    .line 3
    move-object v2, p2

    .line 4
    move-object v3, p4

    .line 5
    move-object v4, p5

    .line 6
    move-object v5, p7

    .line 7
    move-object v6, p8

    .line 8
    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/KeyguardInputViewController;-><init>(Lcom/android/keyguard/KeyguardInputView;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/EmergencyButtonController;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/systemui/flags/FeatureFlags;)V

    .line 9
    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    iput p1, p0, Lcom/android/keyguard/KeyguardCarrierViewController;->mPhoneState:I

    .line 13
    .line 14
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardCarrierViewController;->mIsShowingOwnerCallButton:Z

    .line 15
    .line 16
    new-instance p1, Lcom/android/keyguard/KeyguardCarrierViewController$1;

    .line 17
    .line 18
    invoke-direct {p1, p0}, Lcom/android/keyguard/KeyguardCarrierViewController$1;-><init>(Lcom/android/keyguard/KeyguardCarrierViewController;)V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Lcom/android/keyguard/KeyguardCarrierViewController;->mPhoneStateListener:Lcom/android/keyguard/KeyguardCarrierViewController$1;

    .line 22
    .line 23
    new-instance p1, Lcom/android/keyguard/KeyguardCarrierViewController$2;

    .line 24
    .line 25
    invoke-direct {p1, p0}, Lcom/android/keyguard/KeyguardCarrierViewController$2;-><init>(Lcom/android/keyguard/KeyguardCarrierViewController;)V

    .line 26
    .line 27
    .line 28
    iput-object p1, p0, Lcom/android/keyguard/KeyguardCarrierViewController;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 29
    .line 30
    new-instance p1, Lcom/android/keyguard/KeyguardCarrierViewController$4;

    .line 31
    .line 32
    invoke-direct {p1, p0}, Lcom/android/keyguard/KeyguardCarrierViewController$4;-><init>(Lcom/android/keyguard/KeyguardCarrierViewController;)V

    .line 33
    .line 34
    .line 35
    iput-object p1, p0, Lcom/android/keyguard/KeyguardCarrierViewController;->mEmergencyButtonCallback:Lcom/android/keyguard/KeyguardCarrierViewController$4;

    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    iput-object p1, p0, Lcom/android/keyguard/KeyguardCarrierViewController;->mContext:Landroid/content/Context;

    .line 42
    .line 43
    iput-object p3, p0, Lcom/android/keyguard/KeyguardCarrierViewController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 44
    .line 45
    iput-object p6, p0, Lcom/android/keyguard/KeyguardCarrierViewController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 46
    .line 47
    iput-object p5, p0, Lcom/android/keyguard/KeyguardCarrierViewController;->mEmergencyButtonController:Lcom/android/keyguard/EmergencyButtonController;

    .line 48
    .line 49
    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 50
    .line 51
    check-cast p1, Lcom/android/keyguard/KeyguardCarrierView;

    .line 52
    .line 53
    const p2, 0x7f0a0230

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    check-cast p1, Landroid/widget/TextView;

    .line 61
    .line 62
    iput-object p1, p0, Lcom/android/keyguard/KeyguardCarrierViewController;->mOwnerInfo:Landroid/widget/TextView;

    .line 63
    .line 64
    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 65
    .line 66
    check-cast p1, Lcom/android/keyguard/KeyguardCarrierView;

    .line 67
    .line 68
    const p2, 0x7f0a022f

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    check-cast p1, Landroid/widget/Button;

    .line 76
    .line 77
    iput-object p1, p0, Lcom/android/keyguard/KeyguardCarrierViewController;->mOwnerCallButton:Landroid/widget/Button;

    .line 78
    .line 79
    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 80
    .line 81
    check-cast p1, Lcom/android/keyguard/KeyguardCarrierView;

    .line 82
    .line 83
    const p2, 0x7f0a0232

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    check-cast p1, Landroid/widget/Button;

    .line 91
    .line 92
    iput-object p1, p0, Lcom/android/keyguard/KeyguardCarrierViewController;->mUnlockButton:Landroid/widget/Button;

    .line 93
    .line 94
    return-void
.end method

.method public static decryptCarrierLockPlusMsg(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1
    const-string v0, "KeyguardCarrierView"

    .line 2
    .line 3
    :try_start_0
    const-string v1, "AES/CBC/PKCS5Padding"

    .line 4
    .line 5
    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {}, Lcom/android/keyguard/KeyguardCarrierViewController;->getKey()Ljavax/crypto/spec/SecretKeySpec;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    .line 14
    .line 15
    const-string v4, "i_love_office_tg"

    .line 16
    .line 17
    const-string v5, "UTF-8"

    .line 18
    .line 19
    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    invoke-direct {v3, v4}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 24
    .line 25
    .line 26
    const/4 v4, 0x2

    .line 27
    invoke-virtual {v1, v4, v2, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 28
    .line 29
    .line 30
    const/4 v2, 0x0

    .line 31
    invoke-static {p0, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    new-instance v2, Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {v1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 42
    .line 43
    invoke-direct {v2, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    .line 45
    .line 46
    goto :goto_1

    .line 47
    :catch_0
    move-exception p0

    .line 48
    new-instance v1, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    const-string/jumbo v2, "sec_encrypt.decrypt() Exception = "

    .line 51
    .line 52
    .line 53
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :catch_1
    move-exception p0

    .line 72
    new-instance v1, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    const-string/jumbo v2, "sec_encrypt.decrypt() InvalidAlgorithmParameterException = "

    .line 75
    .line 76
    .line 77
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0}, Ljava/security/InvalidAlgorithmParameterException;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    .line 93
    .line 94
    goto :goto_0

    .line 95
    :catch_2
    move-exception p0

    .line 96
    new-instance v1, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    const-string/jumbo v2, "sec_encrypt.decrypt() InvalidKeyException = "

    .line 99
    .line 100
    .line 101
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0}, Ljava/security/InvalidKeyException;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    .line 117
    .line 118
    goto :goto_0

    .line 119
    :catch_3
    move-exception p0

    .line 120
    new-instance v1, Ljava/lang/StringBuilder;

    .line 121
    .line 122
    const-string/jumbo v2, "sec_encrypt.decrypt() NoSuchPaddingException = "

    .line 123
    .line 124
    .line 125
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {p0}, Ljavax/crypto/NoSuchPaddingException;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object p0

    .line 132
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p0

    .line 139
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    .line 141
    .line 142
    goto :goto_0

    .line 143
    :catch_4
    move-exception p0

    .line 144
    new-instance v1, Ljava/lang/StringBuilder;

    .line 145
    .line 146
    const-string/jumbo v2, "sec_encrypt.decrypt() NoSuchAlgorithmException = "

    .line 147
    .line 148
    .line 149
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->toString()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object p0

    .line 156
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object p0

    .line 163
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    .line 165
    .line 166
    :goto_0
    const/4 v2, 0x0

    .line 167
    :goto_1
    return-object v2
.end method

.method public static getKey()Ljavax/crypto/spec/SecretKeySpec;
    .locals 3

    .line 1
    const-string v0, "SHA-256"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "SKT : Find lost phone plus !!!"

    .line 8
    .line 9
    const-string v2, "UTF-8"

    .line 10
    .line 11
    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 16
    .line 17
    .line 18
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v2, "AES"

    .line 25
    .line 26
    invoke-direct {v1, v0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-object v1
.end method


# virtual methods
.method public final getInitialMessageResId()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final needsInput()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final onPause()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardInputViewController;->mPaused:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 5
    .line 6
    check-cast v0, Lcom/android/keyguard/KeyguardCarrierView;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getKeepScreenOn()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 15
    .line 16
    check-cast p0, Lcom/android/keyguard/KeyguardCarrierView;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setKeepScreenOn(Z)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public final onViewAttached()V
    .locals 5

    .line 1
    invoke-super {p0}, Lcom/android/keyguard/KeyguardInputViewController;->onViewAttached()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierViewController;->mEmergencyButtonController:Lcom/android/keyguard/EmergencyButtonController;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/keyguard/KeyguardCarrierViewController;->mEmergencyButtonCallback:Lcom/android/keyguard/KeyguardCarrierViewController$4;

    .line 7
    .line 8
    iput-object v1, v0, Lcom/android/keyguard/EmergencyButtonController;->mEmergencyButtonCallback:Lcom/android/keyguard/EmergencyButtonController$EmergencyButtonCallback;

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    new-instance v1, Landroid/content/IntentFilter;

    .line 15
    .line 16
    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v2, "com.sec.android.CarrierLock.DISABLED"

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const-string v2, "com.sec.android.FindingLostPhonePlus.SUBSCRIBE"

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    new-instance v2, Lcom/android/keyguard/KeyguardCarrierViewController$3;

    .line 35
    .line 36
    invoke-direct {v2, p0, v0}, Lcom/android/keyguard/KeyguardCarrierViewController$3;-><init>(Lcom/android/keyguard/KeyguardCarrierViewController;Lcom/android/keyguard/KeyguardSecurityCallback;)V

    .line 37
    .line 38
    .line 39
    iput-object v2, p0, Lcom/android/keyguard/KeyguardCarrierViewController;->mBroadcastReceiver:Lcom/android/keyguard/KeyguardCarrierViewController$3;

    .line 40
    .line 41
    const-class v2, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 42
    .line 43
    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    check-cast v2, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 48
    .line 49
    iget-object v3, p0, Lcom/android/keyguard/KeyguardCarrierViewController;->mBroadcastReceiver:Lcom/android/keyguard/KeyguardCarrierViewController$3;

    .line 50
    .line 51
    invoke-virtual {v2, v1, v3}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/IntentFilter;Landroid/content/BroadcastReceiver;)V

    .line 52
    .line 53
    .line 54
    const-class v1, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 55
    .line 56
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 61
    .line 62
    iget-object v2, p0, Lcom/android/keyguard/KeyguardCarrierViewController;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 63
    .line 64
    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 65
    .line 66
    .line 67
    iget-object v1, p0, Lcom/android/keyguard/KeyguardCarrierViewController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 68
    .line 69
    iget-object v2, p0, Lcom/android/keyguard/KeyguardCarrierViewController;->mPhoneStateListener:Lcom/android/keyguard/KeyguardCarrierViewController$1;

    .line 70
    .line 71
    const/4 v3, 0x1

    .line 72
    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardCarrierViewController;->setCarrierLockPlusInfo()V

    .line 76
    .line 77
    .line 78
    iget-object v1, p0, Lcom/android/keyguard/KeyguardCarrierViewController;->mOwnerInfo:Landroid/widget/TextView;

    .line 79
    .line 80
    if-eqz v1, :cond_0

    .line 81
    .line 82
    iget-object v2, p0, Lcom/android/keyguard/KeyguardCarrierViewController;->mOwnerMessage:Ljava/lang/String;

    .line 83
    .line 84
    if-eqz v2, :cond_0

    .line 85
    .line 86
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    .line 88
    .line 89
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardCarrierViewController;->mOwnerCallButton:Landroid/widget/Button;

    .line 90
    .line 91
    if-eqz v1, :cond_1

    .line 92
    .line 93
    new-instance v2, Lcom/android/keyguard/KeyguardCarrierViewController$$ExternalSyntheticLambda1;

    .line 94
    .line 95
    const/4 v4, 0x0

    .line 96
    invoke-direct {v2, p0, v0, v4}, Lcom/android/keyguard/KeyguardCarrierViewController$$ExternalSyntheticLambda1;-><init>(Lcom/android/keyguard/KeyguardCarrierViewController;Lcom/android/keyguard/KeyguardSecurityCallback;I)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0, v4}, Lcom/android/keyguard/KeyguardCarrierViewController;->setVisibleOwnerCallButton(Z)V

    .line 103
    .line 104
    .line 105
    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/KeyguardCarrierViewController;->mUnlockButton:Landroid/widget/Button;

    .line 106
    .line 107
    if-eqz v1, :cond_2

    .line 108
    .line 109
    new-instance v2, Lcom/android/keyguard/KeyguardCarrierViewController$$ExternalSyntheticLambda1;

    .line 110
    .line 111
    invoke-direct {v2, p0, v0, v3}, Lcom/android/keyguard/KeyguardCarrierViewController$$ExternalSyntheticLambda1;-><init>(Lcom/android/keyguard/KeyguardCarrierViewController;Lcom/android/keyguard/KeyguardSecurityCallback;I)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    .line 116
    .line 117
    :cond_2
    return-void
.end method

.method public final onViewDetached()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/android/keyguard/KeyguardInputViewController;->onViewDetached()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iget-object v1, p0, Lcom/android/keyguard/KeyguardCarrierViewController;->mEmergencyButtonController:Lcom/android/keyguard/EmergencyButtonController;

    .line 6
    .line 7
    iput-object v0, v1, Lcom/android/keyguard/EmergencyButtonController;->mEmergencyButtonCallback:Lcom/android/keyguard/EmergencyButtonController$EmergencyButtonCallback;

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierViewController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/android/keyguard/KeyguardCarrierViewController;->mPhoneStateListener:Lcom/android/keyguard/KeyguardCarrierViewController$1;

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 15
    .line 16
    .line 17
    const-class v0, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 18
    .line 19
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 24
    .line 25
    iget-object v1, p0, Lcom/android/keyguard/KeyguardCarrierViewController;->mBroadcastReceiver:Lcom/android/keyguard/KeyguardCarrierViewController$3;

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 28
    .line 29
    .line 30
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 31
    .line 32
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 37
    .line 38
    iget-object p0, p0, Lcom/android/keyguard/KeyguardCarrierViewController;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 39
    .line 40
    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public final setCarrierLockPlusInfo()V
    .locals 10

    .line 1
    const-string v0, "/efs/sec_efs/sktdm_mem/enclawlockmsg.txt"

    .line 2
    .line 3
    const-string v1, ":"

    .line 4
    .line 5
    const-string v2, "KeyguardCarrierView"

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const/16 v4, 0x100

    .line 9
    .line 10
    const/4 v5, 0x0

    .line 11
    :try_start_0
    new-instance v6, Ljava/io/File;

    .line 12
    .line 13
    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    .line 17
    .line 18
    .line 19
    move-result v6

    .line 20
    if-eqz v6, :cond_0

    .line 21
    .line 22
    new-instance v6, Ljava/io/File;

    .line 23
    .line 24
    const-string v7, "/efs/sec_efs/sktdm_mem/encwlawp.txt"

    .line 25
    .line 26
    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-static {v6, v4, v5}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v6

    .line 33
    invoke-static {v6}, Lcom/android/keyguard/KeyguardCarrierViewController;->decryptCarrierLockPlusMsg(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v6

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    new-instance v6, Ljava/io/File;

    .line 39
    .line 40
    const-string v7, "/efs/sec_efs/sktdm_mem/wlawp.txt"

    .line 41
    .line 42
    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-static {v6, v4, v5}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v6

    .line 49
    :goto_0
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 50
    .line 51
    .line 52
    move-result v7

    .line 53
    if-nez v7, :cond_2

    .line 54
    .line 55
    invoke-virtual {v6, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v6

    .line 59
    aget-object v6, v6, v3

    .line 60
    .line 61
    if-nez v6, :cond_1

    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_1
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 65
    .line 66
    .line 67
    move-result v7

    .line 68
    new-array v7, v7, [B

    .line 69
    .line 70
    move v8, v3

    .line 71
    :goto_1
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 72
    .line 73
    .line 74
    move-result v9

    .line 75
    if-ge v8, v9, :cond_3

    .line 76
    .line 77
    invoke-virtual {v6, v8}, Ljava/lang/String;->charAt(I)C

    .line 78
    .line 79
    .line 80
    move-result v9

    .line 81
    int-to-byte v9, v9

    .line 82
    aput-byte v9, v7, v8

    .line 83
    .line 84
    add-int/lit8 v8, v8, 0x1

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_2
    const-string v6, "getCarrierLockPlusPassword(), password is null"

    .line 88
    .line 89
    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    .line 91
    .line 92
    goto :goto_2

    .line 93
    :catch_0
    move-exception v6

    .line 94
    const-string v7, "getCarrierLockPlusPassword(), IOException!!"

    .line 95
    .line 96
    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    .line 98
    .line 99
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 100
    .line 101
    .line 102
    :goto_2
    move-object v7, v5

    .line 103
    :cond_3
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 104
    .line 105
    .line 106
    move-result v6

    .line 107
    iget-object v8, p0, Lcom/android/keyguard/KeyguardCarrierViewController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 108
    .line 109
    const/4 v9, 0x1

    .line 110
    invoke-virtual {v8, v9, v7, v6}, Lcom/android/internal/widget/LockPatternUtils;->saveRemoteLockPassword(I[BI)V

    .line 111
    .line 112
    .line 113
    :try_start_1
    new-instance v6, Ljava/io/File;

    .line 114
    .line 115
    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    .line 119
    .line 120
    .line 121
    move-result v6

    .line 122
    if-eqz v6, :cond_4

    .line 123
    .line 124
    new-instance v6, Ljava/io/File;

    .line 125
    .line 126
    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    invoke-static {v6, v4, v5}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    invoke-static {v0}, Lcom/android/keyguard/KeyguardCarrierViewController;->decryptCarrierLockPlusMsg(Ljava/lang/String;)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    goto :goto_3

    .line 138
    :cond_4
    new-instance v0, Ljava/io/File;

    .line 139
    .line 140
    const-string v6, "/efs/sec_efs/sktdm_mem/lawlockmsg.txt"

    .line 141
    .line 142
    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    invoke-static {v0, v4, v5}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    :goto_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 150
    .line 151
    .line 152
    move-result v4

    .line 153
    if-nez v4, :cond_6

    .line 154
    .line 155
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    aget-object v1, v0, v9

    .line 160
    .line 161
    const-string v4, "1"

    .line 162
    .line 163
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    move-result v1

    .line 167
    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardCarrierViewController;->mIsShowingOwnerCallButton:Z

    .line 168
    .line 169
    invoke-virtual {p0, v3}, Lcom/android/keyguard/KeyguardCarrierViewController;->setVisibleOwnerCallButton(Z)V

    .line 170
    .line 171
    .line 172
    iget-object v1, p0, Lcom/android/keyguard/KeyguardCarrierViewController;->mOwnerInfo:Landroid/widget/TextView;

    .line 173
    .line 174
    const/4 v3, 0x3

    .line 175
    if-eqz v1, :cond_5

    .line 176
    .line 177
    aget-object v4, v0, v3

    .line 178
    .line 179
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    .line 181
    .line 182
    :cond_5
    aget-object v0, v0, v3

    .line 183
    .line 184
    iput-object v0, p0, Lcom/android/keyguard/KeyguardCarrierViewController;->mOwnerMessage:Ljava/lang/String;

    .line 185
    .line 186
    goto :goto_4

    .line 187
    :cond_6
    const-string/jumbo p0, "updateCarrierLockPlusMessage(), message is null"

    .line 188
    .line 189
    .line 190
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 191
    .line 192
    .line 193
    goto :goto_4

    .line 194
    :catch_1
    move-exception p0

    .line 195
    const-string/jumbo v0, "updateCarrierLockPlusMessage(), IOException"

    .line 196
    .line 197
    .line 198
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    .line 200
    .line 201
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 202
    .line 203
    .line 204
    :goto_4
    return-void
.end method

.method public final setVisibleOwnerCallButton(Z)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierViewController;->mOwnerCallButton:Landroid/widget/Button;

    .line 2
    .line 3
    if-eqz v0, :cond_8

    .line 4
    .line 5
    const/16 v1, 0x8

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    const-string v2, "gsm.sim.state"

    .line 22
    .line 23
    const-string v3, ""

    .line 24
    .line 25
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    new-instance v3, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const-string v4, "isSimStateReadyOrLoaded() : simSlotCount = "

    .line 32
    .line 33
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v4, ", simStates = "

    .line 40
    .line 41
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    const-string v4, "KeyguardCarrierView"

    .line 52
    .line 53
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    const/4 v3, 0x0

    .line 57
    if-eqz v2, :cond_4

    .line 58
    .line 59
    const-string v5, ","

    .line 60
    .line 61
    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    move v5, v3

    .line 66
    :goto_0
    if-ge v5, p1, :cond_4

    .line 67
    .line 68
    array-length v6, v2

    .line 69
    if-gt v6, v5, :cond_1

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_1
    aget-object v6, v2, v5

    .line 73
    .line 74
    const-string v7, "READY"

    .line 75
    .line 76
    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 77
    .line 78
    .line 79
    move-result v7

    .line 80
    const/4 v8, 0x1

    .line 81
    if-eqz v7, :cond_2

    .line 82
    .line 83
    goto :goto_2

    .line 84
    :cond_2
    const-string v7, "LOADED"

    .line 85
    .line 86
    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 87
    .line 88
    .line 89
    move-result v6

    .line 90
    if-eqz v6, :cond_3

    .line 91
    .line 92
    goto :goto_2

    .line 93
    :cond_3
    add-int/lit8 v5, v5, 0x1

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_4
    :goto_1
    move v8, v3

    .line 97
    :goto_2
    iget-object p1, p0, Lcom/android/keyguard/KeyguardCarrierViewController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 98
    .line 99
    if-eqz p1, :cond_5

    .line 100
    .line 101
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    goto :goto_3

    .line 106
    :cond_5
    const/4 p1, 0x0

    .line 107
    :goto_3
    if-eqz p1, :cond_6

    .line 108
    .line 109
    new-instance v2, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    const-string/jumbo v5, "setVisibleOwnerCallButton state = "

    .line 112
    .line 113
    .line 114
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    .line 118
    .line 119
    .line 120
    move-result v5

    .line 121
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    const-string v5, ", CallButton ="

    .line 125
    .line 126
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    iget-boolean v5, p0, Lcom/android/keyguard/KeyguardCarrierViewController;->mIsShowingOwnerCallButton:Z

    .line 130
    .line 131
    const-string v6, ", isSimStateReadyOrLoaded ="

    .line 132
    .line 133
    invoke-static {v2, v5, v6, v8, v4}, Lcom/android/keyguard/KeyguardCarrierViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 134
    .line 135
    .line 136
    :cond_6
    if-eqz p1, :cond_7

    .line 137
    .line 138
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    .line 139
    .line 140
    .line 141
    move-result p1

    .line 142
    if-nez p1, :cond_7

    .line 143
    .line 144
    if-eqz v8, :cond_7

    .line 145
    .line 146
    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardCarrierViewController;->mIsShowingOwnerCallButton:Z

    .line 147
    .line 148
    if-eqz p1, :cond_7

    .line 149
    .line 150
    iget p0, p0, Lcom/android/keyguard/KeyguardCarrierViewController;->mPhoneState:I

    .line 151
    .line 152
    const/4 p1, 0x2

    .line 153
    if-eq p0, p1, :cond_7

    .line 154
    .line 155
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 156
    .line 157
    .line 158
    goto :goto_4

    .line 159
    :cond_7
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 160
    .line 161
    .line 162
    :cond_8
    :goto_4
    return-void
.end method
