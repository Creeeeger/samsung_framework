.class public final synthetic Lcom/android/settingslib/users/CreateUserDialogController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/settingslib/users/CreateUserDialogController;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/settingslib/users/CreateUserDialogController;ZI)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/settingslib/users/CreateUserDialogController$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/settingslib/users/CreateUserDialogController$$ExternalSyntheticLambda2;->f$0:Lcom/android/settingslib/users/CreateUserDialogController;

    .line 4
    .line 5
    iput-boolean p2, p0, Lcom/android/settingslib/users/CreateUserDialogController$$ExternalSyntheticLambda2;->f$1:Z

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget p1, p0, Lcom/android/settingslib/users/CreateUserDialogController$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    packed-switch p1, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    goto :goto_0

    .line 8
    :pswitch_0
    iget-object p1, p0, Lcom/android/settingslib/users/CreateUserDialogController$$ExternalSyntheticLambda2;->f$0:Lcom/android/settingslib/users/CreateUserDialogController;

    .line 9
    .line 10
    iget-boolean p0, p0, Lcom/android/settingslib/users/CreateUserDialogController$$ExternalSyntheticLambda2;->f$1:Z

    .line 11
    .line 12
    iget v1, p1, Lcom/android/settingslib/users/CreateUserDialogController;->mCurrentState:I

    .line 13
    .line 14
    add-int/2addr v1, v0

    .line 15
    iput v1, p1, Lcom/android/settingslib/users/CreateUserDialogController;->mCurrentState:I

    .line 16
    .line 17
    if-ne v1, v0, :cond_0

    .line 18
    .line 19
    if-nez p0, :cond_0

    .line 20
    .line 21
    add-int/2addr v1, v0

    .line 22
    iput v1, p1, Lcom/android/settingslib/users/CreateUserDialogController;->mCurrentState:I

    .line 23
    .line 24
    :cond_0
    invoke-virtual {p1}, Lcom/android/settingslib/users/CreateUserDialogController;->updateLayout()V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :goto_0
    iget-object p1, p0, Lcom/android/settingslib/users/CreateUserDialogController$$ExternalSyntheticLambda2;->f$0:Lcom/android/settingslib/users/CreateUserDialogController;

    .line 29
    .line 30
    iget-boolean p0, p0, Lcom/android/settingslib/users/CreateUserDialogController$$ExternalSyntheticLambda2;->f$1:Z

    .line 31
    .line 32
    iget v1, p1, Lcom/android/settingslib/users/CreateUserDialogController;->mCurrentState:I

    .line 33
    .line 34
    sub-int/2addr v1, v0

    .line 35
    iput v1, p1, Lcom/android/settingslib/users/CreateUserDialogController;->mCurrentState:I

    .line 36
    .line 37
    if-ne v1, v0, :cond_1

    .line 38
    .line 39
    if-nez p0, :cond_1

    .line 40
    .line 41
    sub-int/2addr v1, v0

    .line 42
    iput v1, p1, Lcom/android/settingslib/users/CreateUserDialogController;->mCurrentState:I

    .line 43
    .line 44
    :cond_1
    invoke-virtual {p1}, Lcom/android/settingslib/users/CreateUserDialogController;->updateLayout()V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    nop

    .line 49
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
