.class public Lcom/android/systemui/SystemUIAppComponentFactory;
.super Lcom/android/systemui/SystemUIAppComponentFactoryBase;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/systemui/SystemUIAppComponentFactoryBase;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final createSystemUIInitializer(Landroid/content/Context;)Lcom/android/systemui/SystemUIInitializer;
    .locals 0

    .line 1
    sget-object p0, Lcom/android/systemui/SystemUIInitializerFactory;->initializer:Lcom/android/systemui/SystemUIInitializer;

    .line 2
    .line 3
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lcom/android/systemui/SystemUIInitializerFactory;->createFromConfigNoAssert(Landroid/content/Context;)Lcom/android/systemui/SystemUIInitializer;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method
