.class public final synthetic Lcom/android/wm/shell/common/DismissButtonView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/common/DismissButtonView;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/common/DismissButtonView;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/wm/shell/common/DismissButtonView$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/common/DismissButtonView;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/android/wm/shell/common/DismissButtonView$$ExternalSyntheticLambda0;->f$1:Z

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/common/DismissButtonView$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/common/DismissButtonView;

    .line 2
    .line 3
    iget-boolean p0, p0, Lcom/android/wm/shell/common/DismissButtonView$$ExternalSyntheticLambda0;->f$1:Z

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    iget v1, v0, Lcom/android/wm/shell/common/DismissButtonView;->mAccessibilityTextResId:I

    .line 8
    .line 9
    if-lez v1, :cond_1

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iget v2, v0, Lcom/android/wm/shell/common/DismissButtonView;->mAccessibilityTextResId:I

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    sget v1, Lcom/android/wm/shell/common/DismissButtonView;->$r8$clinit:I

    .line 26
    .line 27
    :cond_1
    :goto_0
    invoke-virtual {v0, p0}, Lcom/android/wm/shell/common/DismissButtonView;->updateResources(Z)V

    .line 28
    .line 29
    .line 30
    return-void
.end method
