.class public final Lcom/android/keyguard/KeyguardPresentationDisabler;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# static fields
.field public static final KEYS:[I


# instance fields
.field public final mDownCount:[I

.field public mKeyEnabled:Z

.field public mLastDownTime:J

.field public final mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field public final mVibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const/16 v0, 0x18

    .line 2
    .line 3
    const/16 v1, 0x19

    .line 4
    .line 5
    filled-new-array {v0, v1}, [I

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lcom/android/keyguard/KeyguardPresentationDisabler;->KEYS:[I

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/VibratorHelper;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/util/SettingsHelper;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    filled-new-array {v0, v0}, [I

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iput-object v1, p0, Lcom/android/keyguard/KeyguardPresentationDisabler;->mDownCount:[I

    .line 10
    .line 11
    const-wide/16 v1, 0x0

    .line 12
    .line 13
    iput-wide v1, p0, Lcom/android/keyguard/KeyguardPresentationDisabler;->mLastDownTime:J

    .line 14
    .line 15
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardPresentationDisabler;->mKeyEnabled:Z

    .line 16
    .line 17
    iput-object p1, p0, Lcom/android/keyguard/KeyguardPresentationDisabler;->mVibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

    .line 18
    .line 19
    iput-object p3, p0, Lcom/android/keyguard/KeyguardPresentationDisabler;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 20
    .line 21
    const-string p1, "KeyguardPresentationDisabler"

    .line 22
    .line 23
    invoke-virtual {p2, p1, p0}, Lcom/android/systemui/dump/DumpManager;->registerNsDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance p2, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v0, "  - mKeyEnabled: "

    .line 4
    .line 5
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardPresentationDisabler;->mKeyEnabled:Z

    .line 9
    .line 10
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-boolean p2, p0, Lcom/android/keyguard/KeyguardPresentationDisabler;->mKeyEnabled:Z

    .line 21
    .line 22
    if-eqz p2, :cond_0

    .line 23
    .line 24
    iget-wide v0, p0, Lcom/android/keyguard/KeyguardPresentationDisabler;->mLastDownTime:J

    .line 25
    .line 26
    invoke-static {v0, v1}, Lcom/android/systemui/util/LogUtil;->makeTimeStr(J)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    const-string p2, " / "

    .line 31
    .line 32
    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    const/16 p0, 0xa

    .line 41
    .line 42
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(C)V

    .line 43
    .line 44
    .line 45
    :goto_0
    return-void
.end method
