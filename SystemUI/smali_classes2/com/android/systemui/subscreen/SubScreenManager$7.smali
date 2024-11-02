.class public final Lcom/android/systemui/subscreen/SubScreenManager$7;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/subscreen/SubScreenManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/subscreen/SubScreenManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/subscreen/SubScreenManager$7;->this$0:Lcom/android/systemui/subscreen/SubScreenManager;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onDisplayAdded(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onDisplayChanged(I)V
    .locals 2

    .line 1
    if-nez p1, :cond_1

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenManager$7;->this$0:Lcom/android/systemui/subscreen/SubScreenManager;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/systemui/subscreen/SubScreenManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p1}, Landroid/view/Display;->getState()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenManager$7;->this$0:Lcom/android/systemui/subscreen/SubScreenManager;

    .line 16
    .line 17
    iget v1, v0, Lcom/android/systemui/subscreen/SubScreenManager;->mMainDisplayState:I

    .line 18
    .line 19
    if-eq p1, v1, :cond_1

    .line 20
    .line 21
    iput p1, v0, Lcom/android/systemui/subscreen/SubScreenManager;->mMainDisplayState:I

    .line 22
    .line 23
    iget-boolean v0, v0, Lcom/android/systemui/subscreen/SubScreenManager;->mPendingRequestDualState:Z

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    const/4 v0, 0x2

    .line 28
    if-ne p1, v0, :cond_0

    .line 29
    .line 30
    const-string p1, "SubScreenManager"

    .line 31
    .line 32
    const-string v0, " request pending Dual state when state on"

    .line 33
    .line 34
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    iget-object p1, p0, Lcom/android/systemui/subscreen/SubScreenManager$7;->this$0:Lcom/android/systemui/subscreen/SubScreenManager;

    .line 38
    .line 39
    const/4 v0, 0x1

    .line 40
    invoke-virtual {p1, v0}, Lcom/android/systemui/subscreen/SubScreenManager;->requestDualState(Z)V

    .line 41
    .line 42
    .line 43
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenManager$7;->this$0:Lcom/android/systemui/subscreen/SubScreenManager;

    .line 44
    .line 45
    const/4 p1, 0x0

    .line 46
    iput-boolean p1, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mPendingRequestDualState:Z

    .line 47
    .line 48
    :cond_1
    return-void
.end method

.method public final onDisplayRemoved(I)V
    .locals 0

    .line 1
    return-void
.end method
