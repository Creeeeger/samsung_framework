.class public final Lcom/android/systemui/statusbar/disableflags/DisableStateTracker;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;


# instance fields
.field public final callback:Lcom/android/systemui/statusbar/disableflags/DisableStateTracker$Callback;

.field public displayId:Ljava/lang/Integer;

.field public isDisabled:Z

.field public final mask1:I

.field public final mask2:I


# direct methods
.method public constructor <init>(IILcom/android/systemui/statusbar/disableflags/DisableStateTracker$Callback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/android/systemui/statusbar/disableflags/DisableStateTracker;->mask1:I

    .line 5
    .line 6
    iput p2, p0, Lcom/android/systemui/statusbar/disableflags/DisableStateTracker;->mask2:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/systemui/statusbar/disableflags/DisableStateTracker;->callback:Lcom/android/systemui/statusbar/disableflags/DisableStateTracker$Callback;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final disable(IIIZ)V
    .locals 0

    .line 1
    iget-object p4, p0, Lcom/android/systemui/statusbar/disableflags/DisableStateTracker;->displayId:Ljava/lang/Integer;

    .line 2
    .line 3
    if-eqz p4, :cond_4

    .line 4
    .line 5
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    .line 6
    .line 7
    .line 8
    move-result p4

    .line 9
    if-eq p1, p4, :cond_0

    .line 10
    .line 11
    goto :goto_2

    .line 12
    :cond_0
    iget p1, p0, Lcom/android/systemui/statusbar/disableflags/DisableStateTracker;->mask1:I

    .line 13
    .line 14
    and-int/2addr p1, p2

    .line 15
    if-nez p1, :cond_2

    .line 16
    .line 17
    iget p1, p0, Lcom/android/systemui/statusbar/disableflags/DisableStateTracker;->mask2:I

    .line 18
    .line 19
    and-int/2addr p1, p3

    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const/4 p1, 0x0

    .line 24
    goto :goto_1

    .line 25
    :cond_2
    :goto_0
    const/4 p1, 0x1

    .line 26
    :goto_1
    iget-boolean p2, p0, Lcom/android/systemui/statusbar/disableflags/DisableStateTracker;->isDisabled:Z

    .line 27
    .line 28
    if-ne p2, p1, :cond_3

    .line 29
    .line 30
    goto :goto_2

    .line 31
    :cond_3
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/disableflags/DisableStateTracker;->isDisabled:Z

    .line 32
    .line 33
    iget-object p0, p0, Lcom/android/systemui/statusbar/disableflags/DisableStateTracker;->callback:Lcom/android/systemui/statusbar/disableflags/DisableStateTracker$Callback;

    .line 34
    .line 35
    check-cast p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$$ExternalSyntheticLambda2;

    .line 36
    .line 37
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;

    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->updateViewState()V

    .line 40
    .line 41
    .line 42
    :cond_4
    :goto_2
    return-void
.end method
