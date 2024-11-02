.class public final Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$updateMonitorCallback$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$updateMonitorCallback$1;->this$0:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onKeyguardVisibilityChanged(Z)V
    .locals 3

    .line 1
    if-eqz p1, :cond_4

    .line 2
    .line 3
    sget-boolean p1, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->DEBUG:Z

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$updateMonitorCallback$1;->this$0:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->pm:Landroid/content/pm/PackageManager;

    .line 12
    .line 13
    const-string v1, "com.nttdocomo.android.mascot"

    .line 14
    .line 15
    const/16 v2, 0x2200

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-boolean v1, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    .line 22
    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 26
    .line 27
    const/high16 v1, 0x200000

    .line 28
    .line 29
    and-int/2addr v0, v1

    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 v0, 0x1

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    :goto_0
    const-string v0, "isMascotAppRunning : Mascot is stopped."

    .line 36
    .line 37
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->log(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    move v0, p1

    .line 41
    :goto_1
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->isMascotAppRunning:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .line 43
    goto :goto_2

    .line 44
    :catch_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->isMascotAppRunning:Z

    .line 45
    .line 46
    const-string v0, "Not installed MASCOT_PACKAGE"

    .line 47
    .line 48
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->log(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->injector:Lcom/android/systemui/shade/NotificationPanelViewController$8;

    .line 52
    .line 53
    if-nez v0, :cond_2

    .line 54
    .line 55
    const/4 v0, 0x0

    .line 56
    :cond_2
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController$8;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 57
    .line 58
    iget-boolean v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mDozing:Z

    .line 59
    .line 60
    if-eqz v0, :cond_3

    .line 61
    .line 62
    const/16 p1, 0x8

    .line 63
    .line 64
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->setMascotViewVisible(I)V

    .line 65
    .line 66
    .line 67
    :cond_4
    return-void
.end method

.method public final onStartedGoingToSleep(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$updateMonitorCallback$1;->this$0:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->sUseCachedIsDcmLauncher:Z

    .line 5
    .line 6
    return-void
.end method
