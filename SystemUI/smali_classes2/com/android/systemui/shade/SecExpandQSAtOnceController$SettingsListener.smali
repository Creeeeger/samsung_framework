.class public final Lcom/android/systemui/shade/SecExpandQSAtOnceController$SettingsListener;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;


# instance fields
.field public final mSettingsValueList:[Landroid/net/Uri;

.field public final synthetic this$0:Lcom/android/systemui/shade/SecExpandQSAtOnceController;


# direct methods
.method private constructor <init>(Lcom/android/systemui/shade/SecExpandQSAtOnceController;)V
    .locals 2

    .line 2
    iput-object p1, p0, Lcom/android/systemui/shade/SecExpandQSAtOnceController$SettingsListener;->this$0:Lcom/android/systemui/shade/SecExpandQSAtOnceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo p1, "swipe_directly_to_quick_setting"

    .line 3
    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string/jumbo v0, "swipe_directly_to_quick_setting_area"

    .line 4
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string/jumbo v1, "swipe_directly_to_quick_setting_position"

    .line 5
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    filled-new-array {p1, v0, v1}, [Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/shade/SecExpandQSAtOnceController$SettingsListener;->mSettingsValueList:[Landroid/net/Uri;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/shade/SecExpandQSAtOnceController;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/systemui/shade/SecExpandQSAtOnceController$SettingsListener;-><init>(Lcom/android/systemui/shade/SecExpandQSAtOnceController;)V

    return-void
.end method


# virtual methods
.method public final onChanged(Landroid/net/Uri;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    const-string/jumbo v0, "swipe_directly_to_quick_setting"

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iget-object p0, p0, Lcom/android/systemui/shade/SecExpandQSAtOnceController$SettingsListener;->this$0:Lcom/android/systemui/shade/SecExpandQSAtOnceController;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    const-string p1, "onChanged(swipe_directly_to_quick_setting)"

    .line 20
    .line 21
    invoke-virtual {p0, p1}, Lcom/android/systemui/shade/SecExpandQSAtOnceController;->printLogLine(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/android/systemui/shade/SecExpandQSAtOnceController;->updateResources()V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const-string/jumbo v0, "swipe_directly_to_quick_setting_area"

    .line 29
    .line 30
    .line 31
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    const-string p1, "onChanged(swipe_directly_to_quick_setting_area)"

    .line 42
    .line 43
    invoke-virtual {p0, p1}, Lcom/android/systemui/shade/SecExpandQSAtOnceController;->printLogLine(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/android/systemui/shade/SecExpandQSAtOnceController;->updateResources()V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    const-string/jumbo v0, "swipe_directly_to_quick_setting_position"

    .line 51
    .line 52
    .line 53
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    if-eqz p1, :cond_3

    .line 62
    .line 63
    const-string p1, "onChanged(swipe_directly_to_quick_setting_position)"

    .line 64
    .line 65
    invoke-virtual {p0, p1}, Lcom/android/systemui/shade/SecExpandQSAtOnceController;->printLogLine(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    :cond_3
    :goto_0
    return-void
.end method
