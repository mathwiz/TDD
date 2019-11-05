import unittest
import renamer


class MyTestCase(unittest.TestCase):
    def test_music(self):
        self.assertTrue(renamer.is_music('Wilco - Radio Cure (03 Yankee Hotel Foxtrot).wav'))
        self.assertFalse(renamer.is_music('Wilco - Radio Cure (03 Yankee Hotel Foxtrot).wav.asd'))


    def test_filename(self):
        self.assertTrue(renamer.filename_match('Wilco - Radio Cure (03 Yankee Hotel Foxtrot).wav'))
        self.assertFalse(renamer.filename_match('Wilco - Yankee Hotel Foxtrot - 05 Jesus, Etc..wav'))


    def test_newname(self):
        match = renamer.filename_match('Wilco - Radio Cure (03 Yankee Hotel Foxtrot).wav')
        self.assertEqual(renamer.make_new_name(match), 'Wilco - Yankee Hotel Foxtrot - 03 Radio Cure.wav')


if __name__ == '__main__':
    unittest.main()
