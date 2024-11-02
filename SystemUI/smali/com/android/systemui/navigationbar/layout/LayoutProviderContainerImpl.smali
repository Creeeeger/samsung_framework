.class public final Lcom/android/systemui/navigationbar/layout/LayoutProviderContainerImpl;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/samsung/systemui/splugins/navigationbar/LayoutProviderContainer;


# instance fields
.field public final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/navigationbar/layout/LayoutProviderContainerImpl;->context:Landroid/content/Context;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final updateLayoutProvider(ZZ)Lcom/samsung/systemui/splugins/navigationbar/LayoutProvider;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/navigationbar/layout/LayoutProviderContainerImpl;->context:Landroid/content/Context;

    .line 2
    .line 3
    if-eqz p1, :cond_1

    .line 4
    .line 5
    new-instance p1, Lcom/android/systemui/navigationbar/layout/CoverLayoutProviderImpl;

    .line 6
    .line 7
    const-string p2, "display"

    .line 8
    .line 9
    invoke-virtual {p0, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    check-cast p2, Landroid/hardware/display/DisplayManager;

    .line 14
    .line 15
    const-string v0, "com.samsung.android.hardware.display.category.BUILTIN"

    .line 16
    .line 17
    invoke-virtual {p2, v0}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    array-length v0, p2

    .line 22
    const/4 v1, 0x1

    .line 23
    if-le v0, v1, :cond_0

    .line 24
    .line 25
    aget-object p2, p2, v1

    .line 26
    .line 27
    invoke-virtual {p0, p2}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    :cond_0
    invoke-direct {p1, p0}, Lcom/android/systemui/navigationbar/layout/CoverLayoutProviderImpl;-><init>(Landroid/content/Context;)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    if-eqz p2, :cond_2

    .line 36
    .line 37
    new-instance p1, Lcom/android/systemui/navigationbar/layout/LayoutProviderImpl;

    .line 38
    .line 39
    invoke-direct {p1, p0}, Lcom/android/systemui/navigationbar/layout/LayoutProviderImpl;-><init>(Landroid/content/Context;)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    new-instance p1, Lcom/android/systemui/navigationbar/layout/TabletLayoutProviderImpl;

    .line 44
    .line 45
    invoke-direct {p1, p0}, Lcom/android/systemui/navigationbar/layout/TabletLayoutProviderImpl;-><init>(Landroid/content/Context;)V

    .line 46
    .line 47
    .line 48
    :goto_0
    return-object p1
.end method
