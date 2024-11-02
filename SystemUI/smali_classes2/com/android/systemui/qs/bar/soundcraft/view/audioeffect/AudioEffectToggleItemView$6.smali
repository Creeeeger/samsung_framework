.class public final Lcom/android/systemui/qs/bar/soundcraft/view/audioeffect/AudioEffectToggleItemView$6;
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
    iput-object p1, p0, Lcom/android/systemui/qs/bar/soundcraft/view/audioeffect/AudioEffectToggleItemView$6;->this$0:Lcom/android/systemui/qs/bar/soundcraft/view/audioeffect/AudioEffectToggleItemView;

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
    .locals 2

    .line 1
    check-cast p1, Ljava/lang/Integer;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/qs/bar/soundcraft/view/audioeffect/AudioEffectToggleItemView$6;->this$0:Lcom/android/systemui/qs/bar/soundcraft/view/audioeffect/AudioEffectToggleItemView;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/systemui/qs/bar/soundcraft/view/audioeffect/AudioEffectToggleItemView;->binding:Lcom/android/systemui/qs/bar/soundcraft/viewbinding/AudioEffectToggleItemViewBinding;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/android/systemui/qs/bar/soundcraft/viewbinding/AudioEffectToggleItemViewBinding;->icon:Landroid/widget/ImageView;

    .line 8
    .line 9
    :try_start_0
    sget v1, Lkotlin/Result;->$r8$clinit:I

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/systemui/qs/bar/soundcraft/view/audioeffect/AudioEffectToggleItemView;->context:Landroid/content/Context;

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 18
    .line 19
    .line 20
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    sget p1, Lkotlin/Result;->$r8$clinit:I

    .line 24
    .line 25
    new-instance p1, Lkotlin/Result$Failure;

    .line 26
    .line 27
    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    .line 28
    .line 29
    .line 30
    move-object p0, p1

    .line 31
    :goto_0
    instance-of p1, p0, Lkotlin/Result$Failure;

    .line 32
    .line 33
    if-eqz p1, :cond_0

    .line 34
    .line 35
    const/4 p0, 0x0

    .line 36
    :cond_0
    check-cast p0, Landroid/graphics/drawable/Drawable;

    .line 37
    .line 38
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method
