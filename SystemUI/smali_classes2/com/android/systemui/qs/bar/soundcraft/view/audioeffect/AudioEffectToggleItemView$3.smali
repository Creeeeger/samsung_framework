.class public final Lcom/android/systemui/qs/bar/soundcraft/view/audioeffect/AudioEffectToggleItemView$3;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/bar/soundcraft/view/audioeffect/AudioEffectToggleItemView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/bar/soundcraft/view/audioeffect/AudioEffectToggleItemView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/bar/soundcraft/view/audioeffect/AudioEffectToggleItemView$3;->this$0:Lcom/android/systemui/qs/bar/soundcraft/view/audioeffect/AudioEffectToggleItemView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/Integer;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/qs/bar/soundcraft/view/audioeffect/AudioEffectToggleItemView$3;->this$0:Lcom/android/systemui/qs/bar/soundcraft/view/audioeffect/AudioEffectToggleItemView;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/systemui/qs/bar/soundcraft/view/audioeffect/AudioEffectToggleItemView;->binding:Lcom/android/systemui/qs/bar/soundcraft/viewbinding/AudioEffectToggleItemViewBinding;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/android/systemui/qs/bar/soundcraft/viewbinding/AudioEffectToggleItemViewBinding;->icon:Landroid/widget/ImageView;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/systemui/qs/bar/soundcraft/view/audioeffect/AudioEffectToggleItemView;->context:Landroid/content/Context;

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method
