.class public final Lcom/android/systemui/monet/dynamiccolor/ToneDeltaConstraint;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final delta:D

.field public final keepAway:Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

.field public final keepAwayPolarity:Lcom/android/systemui/monet/dynamiccolor/TonePolarity;


# direct methods
.method public constructor <init>(DLcom/android/systemui/monet/dynamiccolor/DynamicColor;Lcom/android/systemui/monet/dynamiccolor/TonePolarity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lcom/android/systemui/monet/dynamiccolor/ToneDeltaConstraint;->delta:D

    .line 5
    .line 6
    iput-object p3, p0, Lcom/android/systemui/monet/dynamiccolor/ToneDeltaConstraint;->keepAway:Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 7
    .line 8
    iput-object p4, p0, Lcom/android/systemui/monet/dynamiccolor/ToneDeltaConstraint;->keepAwayPolarity:Lcom/android/systemui/monet/dynamiccolor/TonePolarity;

    .line 9
    .line 10
    return-void
.end method
