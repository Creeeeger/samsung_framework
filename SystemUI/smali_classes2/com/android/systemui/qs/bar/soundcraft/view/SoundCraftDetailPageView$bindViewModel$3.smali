.class public final Lcom/android/systemui/qs/bar/soundcraft/view/SoundCraftDetailPageView$bindViewModel$3;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroidx/lifecycle/Observer;


# static fields
.field public static final INSTANCE:Lcom/android/systemui/qs/bar/soundcraft/view/SoundCraftDetailPageView$bindViewModel$3;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/qs/bar/soundcraft/view/SoundCraftDetailPageView$bindViewModel$3;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/android/systemui/qs/bar/soundcraft/view/SoundCraftDetailPageView$bindViewModel$3;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/android/systemui/qs/bar/soundcraft/view/SoundCraftDetailPageView$bindViewModel$3;->INSTANCE:Lcom/android/systemui/qs/bar/soundcraft/view/SoundCraftDetailPageView$bindViewModel$3;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    .line 2
    .line 3
    new-instance p0, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string/jumbo v0, "showDownloadView="

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    const-string p1, "SoundCraft.DetailPageView"

    .line 19
    .line 20
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    return-void
.end method
