.class public final Lcom/android/systemui/volume/config/VolumeConfigs;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final context:Landroid/content/Context;

.field public final systemConfig$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/volume/config/VolumeConfigs;->context:Landroid/content/Context;

    .line 5
    .line 6
    new-instance p1, Lcom/android/systemui/volume/config/VolumeConfigs$systemConfig$2;

    .line 7
    .line 8
    invoke-direct {p1, p0}, Lcom/android/systemui/volume/config/VolumeConfigs$systemConfig$2;-><init>(Lcom/android/systemui/volume/config/VolumeConfigs;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iput-object p1, p0, Lcom/android/systemui/volume/config/VolumeConfigs;->systemConfig$delegate:Lkotlin/Lazy;

    .line 16
    .line 17
    return-void
.end method
