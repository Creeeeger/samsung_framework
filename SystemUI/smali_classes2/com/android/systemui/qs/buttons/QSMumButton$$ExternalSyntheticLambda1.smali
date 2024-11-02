.class public final synthetic Lcom/android/systemui/qs/buttons/QSMumButton$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/qs/buttons/QSMumButton;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/buttons/QSMumButton;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/qs/buttons/QSMumButton$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/qs/buttons/QSMumButton;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/buttons/QSMumButton$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/qs/buttons/QSMumButton;

    .line 2
    .line 3
    sget v0, Lcom/android/systemui/qs/buttons/QSMumButton;->$r8$clinit:I

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const-class v0, Lcom/android/systemui/statusbar/CommandQueue;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/CommandQueue;->animateCollapsePanels()V

    .line 17
    .line 18
    .line 19
    iget-object p0, p0, Lcom/android/systemui/qs/buttons/QSMumButton;->mUserInteractor:Lcom/android/systemui/user/domain/interactor/UserInteractor;

    .line 20
    .line 21
    sget-object v0, Lcom/android/systemui/animation/Expandable;->Companion:Lcom/android/systemui/animation/Expandable$Companion;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    new-instance v0, Lcom/android/systemui/animation/Expandable$Companion$fromView$1;

    .line 27
    .line 28
    invoke-direct {v0, p1}, Lcom/android/systemui/animation/Expandable$Companion$fromView$1;-><init>(Landroid/view/View;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v0}, Lcom/android/systemui/user/domain/interactor/UserInteractor;->showUserSwitcher(Lcom/android/systemui/animation/Expandable;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method
