.class public final Lcom/android/systemui/subscreen/SubScreenQSEventHandler$3;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/navigationbar/NavigationModeController$ModeChangedListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/subscreen/SubScreenQSEventHandler;


# direct methods
.method public constructor <init>(Lcom/android/systemui/subscreen/SubScreenQSEventHandler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler$3;->this$0:Lcom/android/systemui/subscreen/SubScreenQSEventHandler;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onNavigationModeChanged(I)V
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler$3;->this$0:Lcom/android/systemui/subscreen/SubScreenQSEventHandler;

    .line 6
    .line 7
    invoke-static {p0, p1}, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->-$$Nest$fputmIsGestureMode(Lcom/android/systemui/subscreen/SubScreenQSEventHandler;Z)V

    .line 8
    .line 9
    .line 10
    invoke-static {p0}, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->-$$Nest$fgetmPanelLogger(Lcom/android/systemui/subscreen/SubScreenQSEventHandler;)Lcom/android/systemui/log/SecPanelLogger;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v1, "mIsGestureMode: "

    .line 17
    .line 18
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-static {p0}, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->-$$Nest$fgetmIsGestureMode(Lcom/android/systemui/subscreen/SubScreenQSEventHandler;)Z

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    check-cast p1, Lcom/android/systemui/log/SecPanelLoggerImpl;

    .line 33
    .line 34
    invoke-virtual {p1, p0}, Lcom/android/systemui/log/SecPanelLoggerImpl;->addCoverPanelStateLog(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method
