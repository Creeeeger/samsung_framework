.class public final synthetic Lcom/google/android/material/chip/SeslExpandableContainer$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/android/material/chip/SeslExpandableContainer;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/material/chip/SeslExpandableContainer;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/material/chip/SeslExpandableContainer$$ExternalSyntheticLambda4;->f$0:Lcom/google/android/material/chip/SeslExpandableContainer;

    .line 5
    .line 6
    iput p2, p0, Lcom/google/android/material/chip/SeslExpandableContainer$$ExternalSyntheticLambda4;->f$1:I

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    iput p1, p0, Lcom/google/android/material/chip/SeslExpandableContainer$$ExternalSyntheticLambda4;->f$2:I

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/SeslExpandableContainer$$ExternalSyntheticLambda4;->f$0:Lcom/google/android/material/chip/SeslExpandableContainer;

    .line 2
    .line 3
    iget v1, p0, Lcom/google/android/material/chip/SeslExpandableContainer$$ExternalSyntheticLambda4;->f$1:I

    .line 4
    .line 5
    iget p0, p0, Lcom/google/android/material/chip/SeslExpandableContainer$$ExternalSyntheticLambda4;->f$2:I

    .line 6
    .line 7
    sget v2, Lcom/google/android/material/chip/SeslExpandableContainer;->$r8$clinit:I

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/google/android/material/chip/SeslExpandableContainer;->getScrollContentsWidth()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    iget-boolean v3, v0, Lcom/google/android/material/chip/SeslExpandableContainer;->mExpanded:Z

    .line 14
    .line 15
    if-nez v3, :cond_0

    .line 16
    .line 17
    iget-object v3, v0, Lcom/google/android/material/chip/SeslExpandableContainer;->mScrollView:Landroid/widget/HorizontalScrollView;

    .line 18
    .line 19
    new-instance v4, Lcom/google/android/material/chip/SeslExpandableContainer$$ExternalSyntheticLambda3;

    .line 20
    .line 21
    invoke-direct {v4, v0, v1, v2, p0}, Lcom/google/android/material/chip/SeslExpandableContainer$$ExternalSyntheticLambda3;-><init>(Lcom/google/android/material/chip/SeslExpandableContainer;III)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v3, v4}, Landroid/widget/HorizontalScrollView;->post(Ljava/lang/Runnable;)Z

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const-string p0, "SeslExpandableContainer"

    .line 29
    .line 30
    const-string v0, "cannot scroll if container is expanded"

    .line 31
    .line 32
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    :goto_0
    return-void
.end method
