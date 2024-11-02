.class public final Lcom/android/systemui/edgelighting/utils/TalkBackUtil;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;


# static fields
.field public static mInstance:Lcom/android/systemui/edgelighting/utils/TalkBackUtil;


# instance fields
.field public final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field public final mContext:Landroid/content/Context;

.field public mIsTalkbackMode:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/systemui/edgelighting/utils/TalkBackUtil;->mIsTalkbackMode:Z

    .line 6
    .line 7
    new-instance v1, Lcom/android/systemui/edgelighting/utils/TalkBackUtil$1;

    .line 8
    .line 9
    invoke-direct {v1, p0}, Lcom/android/systemui/edgelighting/utils/TalkBackUtil$1;-><init>(Lcom/android/systemui/edgelighting/utils/TalkBackUtil;)V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Lcom/android/systemui/edgelighting/utils/TalkBackUtil;->mContext:Landroid/content/Context;

    .line 13
    .line 14
    const-string v1, "accessibility"

    .line 15
    .line 16
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    .line 21
    .line 22
    iput-object v1, p0, Lcom/android/systemui/edgelighting/utils/TalkBackUtil;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 23
    .line 24
    new-instance v1, Lcom/android/systemui/edgelighting/utils/TalkBackUtil$2;

    .line 25
    .line 26
    const/4 v2, 0x0

    .line 27
    invoke-direct {v1, p0, v2}, Lcom/android/systemui/edgelighting/utils/TalkBackUtil$2;-><init>(Lcom/android/systemui/edgelighting/utils/TalkBackUtil;Landroid/os/Handler;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    const-string v2, "enabled_accessibility_services"

    .line 35
    .line 36
    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {p1, v2, v0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/utils/TalkBackUtil;->setTalkBackMode()V

    .line 44
    .line 45
    .line 46
    const-string p0, "TalkBackUtils"

    .line 47
    .line 48
    const-string p1, "TalkBackUtil instance create!!"

    .line 49
    .line 50
    invoke-static {p0, p1}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/systemui/edgelighting/utils/TalkBackUtil;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/systemui/edgelighting/utils/TalkBackUtil;->mInstance:Lcom/android/systemui/edgelighting/utils/TalkBackUtil;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/android/systemui/edgelighting/utils/TalkBackUtil;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-direct {v0, p0}, Lcom/android/systemui/edgelighting/utils/TalkBackUtil;-><init>(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lcom/android/systemui/edgelighting/utils/TalkBackUtil;->mInstance:Lcom/android/systemui/edgelighting/utils/TalkBackUtil;

    .line 15
    .line 16
    :cond_0
    sget-object p0, Lcom/android/systemui/edgelighting/utils/TalkBackUtil;->mInstance:Lcom/android/systemui/edgelighting/utils/TalkBackUtil;

    .line 17
    .line 18
    return-object p0
.end method


# virtual methods
.method public final onInit(I)V
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/edgelighting/utils/TalkBackUtil;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    iget-object p0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p0, -0x1

    .line 17
    if-ne p1, p0, :cond_1

    .line 18
    .line 19
    const-string p0, "TalkBackUtils"

    .line 20
    .line 21
    const-string p1, "Do not init TTS!!"

    .line 22
    .line 23
    invoke-static {p0, p1}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    :cond_1
    :goto_0
    return-void
.end method

.method public final setTalkBackMode()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/edgelighting/utils/TalkBackUtil;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "enabled_accessibility_services"

    .line 8
    .line 9
    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    const-string v1, "(?i).*com.samsung.android.app.talkback.TalkBackService.*"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_0

    .line 22
    .line 23
    const-string v1, "(?i).*com.samsung.android.marvin.talkback.TalkBackService.*"

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    :cond_0
    const/4 v0, 0x1

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const/4 v0, 0x0

    .line 34
    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/edgelighting/utils/TalkBackUtil;->mIsTalkbackMode:Z

    .line 35
    .line 36
    return-void
.end method
