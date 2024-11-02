.class public final Lcom/android/systemui/qs/bar/soundcraft/view/audioeffect/AudioEffectToggleItemView$4;
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
    iput-object p1, p0, Lcom/android/systemui/qs/bar/soundcraft/view/audioeffect/AudioEffectToggleItemView$4;->this$0:Lcom/android/systemui/qs/bar/soundcraft/view/audioeffect/AudioEffectToggleItemView;

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
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/qs/bar/soundcraft/view/audioeffect/AudioEffectToggleItemView$4;->this$0:Lcom/android/systemui/qs/bar/soundcraft/view/audioeffect/AudioEffectToggleItemView;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/systemui/qs/bar/soundcraft/view/audioeffect/AudioEffectToggleItemView;->binding:Lcom/android/systemui/qs/bar/soundcraft/viewbinding/AudioEffectToggleItemViewBinding;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/systemui/qs/bar/soundcraft/viewbinding/AudioEffectToggleItemViewBinding;->name:Landroid/widget/TextView;

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
