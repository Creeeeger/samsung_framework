.class public final Lcom/android/systemui/shade/SecHideInformationMirroringController;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final Companion:Lcom/android/systemui/shade/SecHideInformationMirroringController$Companion;

.field private static final TAG:Ljava/lang/String; = "SecHideInformationMirroringController"


# instance fields
.field private final mainHandler:Landroid/os/Handler;

.field private final model:Lcom/android/systemui/shade/SecHideInformationMirroringModel;

.field private final notificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

.field private settingListener:Lcom/android/systemui/shade/SecHideInformationMirroringController$SmartViewSettingListener;

.field private final settingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field private final statusBarWindowController:Lcom/android/systemui/statusbar/window/StatusBarWindowController;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/shade/SecHideInformationMirroringController$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/shade/SecHideInformationMirroringController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/android/systemui/shade/SecHideInformationMirroringController;->Companion:Lcom/android/systemui/shade/SecHideInformationMirroringController$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/NotificationShadeWindowController;Lcom/android/systemui/statusbar/window/StatusBarWindowController;Lcom/android/systemui/shade/SecHideInformationMirroringModel;Lcom/android/systemui/util/SettingsHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/shade/SecHideInformationMirroringController;->notificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/shade/SecHideInformationMirroringController;->statusBarWindowController:Lcom/android/systemui/statusbar/window/StatusBarWindowController;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/systemui/shade/SecHideInformationMirroringController;->model:Lcom/android/systemui/shade/SecHideInformationMirroringModel;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/systemui/shade/SecHideInformationMirroringController;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 11
    .line 12
    sget-object p1, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    .line 13
    .line 14
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Landroid/os/Handler;

    .line 19
    .line 20
    iput-object p1, p0, Lcom/android/systemui/shade/SecHideInformationMirroringController;->mainHandler:Landroid/os/Handler;

    .line 21
    .line 22
    return-void
.end method

.method public static final synthetic access$getModel$p(Lcom/android/systemui/shade/SecHideInformationMirroringController;)Lcom/android/systemui/shade/SecHideInformationMirroringModel;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/shade/SecHideInformationMirroringController;->model:Lcom/android/systemui/shade/SecHideInformationMirroringModel;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getNotificationShadeWindowController$p(Lcom/android/systemui/shade/SecHideInformationMirroringController;)Lcom/android/systemui/statusbar/NotificationShadeWindowController;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/shade/SecHideInformationMirroringController;->notificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getSettingsHelper$p(Lcom/android/systemui/shade/SecHideInformationMirroringController;)Lcom/android/systemui/util/SettingsHelper;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/shade/SecHideInformationMirroringController;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getStatusBarWindowController$p(Lcom/android/systemui/shade/SecHideInformationMirroringController;)Lcom/android/systemui/statusbar/window/StatusBarWindowController;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/shade/SecHideInformationMirroringController;->statusBarWindowController:Lcom/android/systemui/statusbar/window/StatusBarWindowController;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$handleHideInformationMirroringWindowFlag(Lcom/android/systemui/shade/SecHideInformationMirroringController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/systemui/shade/SecHideInformationMirroringController;->handleHideInformationMirroringWindowFlag()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$printLogLine(Lcom/android/systemui/shade/SecHideInformationMirroringController;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/systemui/shade/SecHideInformationMirroringController;->printLogLine(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final handleHideInformationMirroringWindowFlag()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/shade/SecHideInformationMirroringController;->mainHandler:Landroid/os/Handler;

    .line 2
    .line 3
    new-instance v1, Lcom/android/systemui/shade/SecHideInformationMirroringController$handleHideInformationMirroringWindowFlag$1;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/android/systemui/shade/SecHideInformationMirroringController$handleHideInformationMirroringWindowFlag$1;-><init>(Lcom/android/systemui/shade/SecHideInformationMirroringController;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private final printLogLine(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/shade/SecHideInformationMirroringController;->model:Lcom/android/systemui/shade/SecHideInformationMirroringModel;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/systemui/shade/SecHideInformationMirroringModel;->shouldHideInformation()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string p1, " SMART_VIEW_SHOW_NOTIFICATION_ON hide? "

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    const-string p1, "SecHideInformationMirroringController"

    .line 28
    .line 29
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method public final init()V
    .locals 1

    .line 1
    const-string v0, "init()"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/android/systemui/shade/SecHideInformationMirroringController;->printLogLine(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/android/systemui/shade/SecHideInformationMirroringController$SmartViewSettingListener;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Lcom/android/systemui/shade/SecHideInformationMirroringController$SmartViewSettingListener;-><init>(Lcom/android/systemui/shade/SecHideInformationMirroringController;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/android/systemui/shade/SecHideInformationMirroringController;->settingListener:Lcom/android/systemui/shade/SecHideInformationMirroringController$SmartViewSettingListener;

    .line 12
    .line 13
    invoke-direct {p0}, Lcom/android/systemui/shade/SecHideInformationMirroringController;->handleHideInformationMirroringWindowFlag()V

    .line 14
    .line 15
    .line 16
    return-void
.end method
