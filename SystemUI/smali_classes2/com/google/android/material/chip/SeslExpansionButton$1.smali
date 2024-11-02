.class public final Lcom/google/android/material/chip/SeslExpansionButton$1;
.super Landroid/os/CountDownTimer;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/google/android/material/chip/SeslExpansionButton;


# direct methods
.method public constructor <init>(Lcom/google/android/material/chip/SeslExpansionButton;JJ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/chip/SeslExpansionButton$1;->this$0:Lcom/google/android/material/chip/SeslExpansionButton;

    .line 2
    .line 3
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onFinish()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/SeslExpansionButton$1;->this$0:Lcom/google/android/material/chip/SeslExpansionButton;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/google/android/material/chip/SeslExpansionButton;->mAutoDisappear:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget-object p0, p0, Lcom/google/android/material/chip/SeslExpansionButton$1;->this$0:Lcom/google/android/material/chip/SeslExpansionButton;

    .line 14
    .line 15
    const/4 v0, 0x4

    .line 16
    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/SeslExpansionButton;->setVisibility(I)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public final onTick(J)V
    .locals 0

    .line 1
    return-void
.end method
