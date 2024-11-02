.class public final Lcom/android/systemui/accessibility/fontscaling/FontScalingDialog$onConfigurationChanged$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/accessibility/fontscaling/FontScalingDialog;


# direct methods
.method public constructor <init>(Lcom/android/systemui/accessibility/fontscaling/FontScalingDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialog$onConfigurationChanged$1;->this$0:Lcom/android/systemui/accessibility/fontscaling/FontScalingDialog;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialog$onConfigurationChanged$1;->this$0:Lcom/android/systemui/accessibility/fontscaling/FontScalingDialog;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialog;->title:Landroid/widget/TextView;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    move-object v0, v1

    .line 9
    :cond_0
    const v2, 0x7f1403ed

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 13
    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialog$onConfigurationChanged$1;->this$0:Lcom/android/systemui/accessibility/fontscaling/FontScalingDialog;

    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialog;->doneButton:Landroid/widget/Button;

    .line 18
    .line 19
    if-nez p0, :cond_1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    move-object v1, p0

    .line 23
    :goto_0
    const p0, 0x7f140691

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setTextAppearance(I)V

    .line 27
    .line 28
    .line 29
    return-void
.end method
