package Lingua::EN::VarCon;

=pod

=head1 NAME

Lingua::EN::VarCon - Provides access to the VarCon (Variant Conversion Info)

=head1 DESCRIPTION

VarCon is a data set provided as part of the Word List project.

It contains a number of lists and tables of words that can be used to help
automatically convert the English language between the differing spellings
of it's local dialects (American, British, Canadian).

In an age where Spanish application translations are common, but finding
a British, Canadian or Australian translation (as used by FAR more people
than American English) can be almost impossible, and when "English" on the
internet is increasingly seeming to be "American", it is hoped that by
providing access to the raw data in a variety of different ways (optimised
for different application types with different load profiles) it will
encourage developers to integrate support for automated dialect
translation into internationalisation toolkits, and thus into many
applications.

=head1 METHODS

For this initial release, only methods to locate the files are provided.

Additional access methods will be provided later, or on request.

=cut

use 5.005;
use strict;
use File::ShareDir ();

use vars qw{$VERSION};
BEGIN {
	$VERSION = '0.02';
}





#####################################################################
# File Methods

=pod

=head2 abbc_file

The C<abbc_file> method returns the location of the F<abbc.tab> file from
the VarCon data set.

=cut

sub abbc_file {
	File::ShareDir::module_file(__PACKAGE__, 'abbc.tab');
}

=pod

=head2 also_file

The C<also_file> method returns the location of the F<variant-also.tab>
file from the VarCon data set.

=cut

sub also_file {
	File::ShareDir::module_file(__PACKAGE__, 'variant-also.tab');
}

=pod

=head2 infl_file

The C<infl_file> method returns the location of the F<variant-infl.tab>
file from the VarCon data set.

=cut

sub infl_file {
	File::ShareDir::module_file(__PACKAGE__, 'variant-infl.tab');
}

=pod

=head2 wroot_file

The C<infl_file> method returns the location of the F<variant-wroot.tab>
file from the VarCon data set.

=cut

sub wroot_file {
	File::ShareDir::module_file(__PACKAGE__, 'variant-wroot.tab');
}

=pod

=head2 voc_file

The C<voc_file> method returns the location of the F<voc.tab>
file from the VarCon data set.

=cut

sub voc_file {
	File::ShareDir::module_file(__PACKAGE__, 'voc.tab');	
}

1;

=pod

=head1 TO DO

- Split out into smaller language-specific files

- Access in the form of a memory hash (optimised per language?)

- Access in the form of a Berkely DB

- Access in the form of a SQLite database (maybe overkill)

=head1 SUPPORT

Perl bugs should always be submitted via the CPAN bug tracker

L<http://rt.cpan.org/NoAuth/ReportBug.html?Queue=File-UserConfig>

Bugs in the word lists should be reported via the feature request
tracker on the SourceForge site of the Word Lists project.

L<http://sourceforge.net/tracker/?atid=360079&group_id=10079&func=browse>

For other issues, contact the maintainer

=head1 AUTHOR

Adam Kennedy E<lt>cpan@ali.asE<gt>, L<http://ali.as/>

=head1 SEE ALSO

L<File::ShareDir>, L<http://wordlist.sourceforge.net/>

=head1 COPYRIGHT

Copyright for this distribution is a little more involved than most.

=head2 The Lingua::EN::VarCon Module

Copyright (c) 2006 Adam Kennedy. All rights reserved.

This program is free software; you can redistribute
it and/or modify it under the same terms as Perl itself.

The full text of the license can be found in the
LICENSE file included with this module.

=head2 The VarCon Data Sets

Copyright 2000-2004 by Kevin Atkinson

Permission to use, copy, modify, distribute and sell this array, the
associated software, and its documentation for any purpose is hereby
granted without fee, provided that the above copyright notice appears
in all copies and that both that copyright notice and this permission
notice appear in supporting documentation. Kevin Atkinson makes no
representations about the suitability of this array for any
purpose. It is provided "as is" without express or implied warranty.

=head2 Original Ispell Data Sets

The original words lists come from the Ispell distribution:

Copyright 1993, Geoff Kuenning, Granada Hills, CA
All rights reserved.

Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions
are met:

1. Redistributions of source code must retain the above copyright
   notice, this list of conditions and the following disclaimer.
2. Redistributions in binary form must reproduce the above copyright
   notice, this list of conditions and the following disclaimer in the
   documentation and/or other materials provided with the distribution.
3. All modifications to the source code must be clearly marked as
   such.  Binary redistributions based on modified source code
   must be clearly marked as modified versions in the documentation
   and/or other materials provided with the distribution.
(clause 4 removed with permission from Geoff Kuenning)
5. The name of Geoff Kuenning may not be used to endorse or promote
   products derived from this software without specific prior
   written permission.

THIS SOFTWARE IS PROVIDED BY GEOFF KUENNING AND CONTRIBUTORS ``AS IS'' AND
ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
ARE DISCLAIMED.  IN NO EVENT SHALL GEOFF KUENNING OR CONTRIBUTORS BE LIABLE
FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY
OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
SUCH DAMAGE.

=cut
