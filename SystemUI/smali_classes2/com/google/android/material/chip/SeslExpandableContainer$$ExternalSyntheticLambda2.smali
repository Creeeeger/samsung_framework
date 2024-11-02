.class public final synthetic Lcom/google/android/material/chip/SeslExpandableContainer$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/android/material/chip/SeslExpandableContainer;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/material/chip/SeslExpandableContainer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/material/chip/SeslExpandableContainer$$ExternalSyntheticLambda2;->f$0:Lcom/google/android/material/chip/SeslExpandableContainer;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/google/android/material/chip/SeslExpandableContainer$$ExternalSyntheticLambda2;->f$0:Lcom/google/android/material/chip/SeslExpandableContainer;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->mExpansionButton:Lcom/google/android/material/chip/SeslExpansionButton;

    .line 4
    .line 5
    iget-boolean p0, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->mExpanded:Z

    .line 6
    .line 7
    iput-boolean p0, v0, Lcom/google/android/material/chip/SeslExpansionButton;->mExpanded:Z

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/widget/ImageView;->refreshDrawableState()V

    .line 10
    .line 11
    .line 12
    return-void
.end method
