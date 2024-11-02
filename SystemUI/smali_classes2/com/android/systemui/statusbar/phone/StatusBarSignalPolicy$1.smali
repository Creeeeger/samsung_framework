.class public final Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$DesktopCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$1;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final updateDesktopStatusBarIcons()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$1;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mDesktopManager:Lcom/android/systemui/util/DesktopManager;

    .line 4
    .line 5
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mIsAirplaneMode:Z

    .line 6
    .line 7
    iget p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mAirplaneResId:I

    .line 8
    .line 9
    check-cast v0, Lcom/android/systemui/util/DesktopManagerImpl;

    .line 10
    .line 11
    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/util/DesktopManagerImpl;->setAirplaneMode(ZI)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
