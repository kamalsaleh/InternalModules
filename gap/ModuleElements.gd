############################################################################
##
##                                InternalModules package
##
##  Copyright 2019, Mohamed Barakat,   University of Siegen
##
#! @Chapter Internal module elements
##
#############################################################################

####################################
##
#! @Section GAP Categories
##
####################################

## categories

#!
DeclareCategory( "IsElementInInternalModule", IsElementInInternalAlgebraOrModule );

#!
DeclareCategory( "IsElementInInternalLeftModule", IsElementInInternalModule );

BindGlobal( "TheFamilyOfInternalLeftModuleElements",
        NewFamily( "TheFamilyOfInternalLeftModuleElements" ) );

BindGlobal( "TheTypeInternalLeftModuleElement",
        NewType( TheFamilyOfInternalLeftModuleElements,
                IsElementInInternalLeftModule ) );

#!
DeclareCategory( "IsElementInInternalRightModule", IsElementInInternalModule );

BindGlobal( "TheFamilyOfInternalRightModuleElements",
        NewFamily( "TheFamilyOfInternalRightModuleElements" ) );

BindGlobal( "TheTypeInternalRightModuleElement",
        NewType( TheFamilyOfInternalRightModuleElements,
                IsElementInInternalRightModule ) );

####################################
##
#! @Section Constructors
##
####################################

#! @Arguments phi, M
#! @Returns a &CAP; morphism
#! @Group InternalElement
DeclareOperation( "InternalElement",
        [ IsCapCategoryMorphism, IsInternalModule ] );

#! @Arguments M, chi, degree, i
#! @Group InternalElement
DeclareOperation( "InternalElement",
        [ IsInternalModule, IsObject, IsInt, IsInt ] );

#! @Arguments M, chi, i
#! @Group InternalElement
DeclareOperation( "InternalElement",
        [ IsInternalModule, IsObject, IsInt ] );

####################################
##
#! @Section Attributes
##
####################################

#! @Arguments e
#! @Returns a &homalg; matrix
#! @Group CoefficientsVector
DeclareAttribute( "CoefficientsVector",
        IsElementInInternalAlgebraOrModule );

#! @Arguments L
#! @Returns a &homalg; matrix
#! @Group CoefficientsVector
DeclareAttribute( "CoefficientsVector",
        IsList );
