.class public final synthetic Lcom/android/systemui/widget/SystemUIButton$BlurSettingsListener$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/widget/SystemUIButton$BlurSettingsListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/widget/SystemUIButton$BlurSettingsListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/widget/SystemUIButton$BlurSettingsListener$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/widget/SystemUIButton$BlurSettingsListener;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/widget/SystemUIButton$BlurSettingsListener$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/widget/SystemUIButton$BlurSettingsListener;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget v0, Lcom/android/systemui/widget/SystemUIButton;->$r8$clinit:I

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/systemui/widget/SystemUIButton$BlurSettingsListener;->this$0:Lcom/android/systemui/widget/SystemUIButton;

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/android/systemui/widget/SystemUIButton;->updateButtonColor()V

    .line 11
    .line 12
    .line 13
    return-void
.end method
